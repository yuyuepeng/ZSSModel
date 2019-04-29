//
//  ZSSModel+extentions.m
//  ZSSModelDemo
//
//  Created by 玉岳鹏 on 2019/4/26.
//  Copyright © 2019 玉岳鹏. All rights reserved.
//

#import "ZSSModel+extentions.h"

@implementation ZSSModel (extentions)

+ (NSArray *)zss_modelArrayWithDictArray:(NSArray <NSDictionary *>*)dictArray {
    NSMutableArray *models = [NSMutableArray array];
    [dictArray enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id model = [[self alloc] initWithDict:dictArray[idx]];
        [models addObject:model];
    }];
    return models;
}
+ (NSArray *)zss_DictArrayWithModelArray:(NSArray *)modelArray {
    NSMutableArray *dictARR = [NSMutableArray array];
    [modelArray enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSDictionary *dict = [ZSSModel dictFromModel:modelArray[idx]];
        [dictARR addObject:dict];
        
    }];
    return dictARR;
}
+ (NSDictionary *)dictFromModel:(id)model {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];//
//    NSArray *allkeys = [model allKeys];
    NSMutableArray *keys = [NSMutableArray array];
    NSMutableArray *attributes = [NSMutableArray array];
    unsigned int outCount;
    /*
     * 例子
     * name = value3 attribute = T@"NSString",C,N,V_value3
     * name = value4 attribute = T^i,N,V_value4
     */
    objc_property_t *properties = class_copyPropertyList([model class], &outCount);
    for (int i = 0; i < outCount; i ++) {
        objc_property_t property = properties[i];
        //通过property_getName函数获得属性的名字
        NSString *propertyName = [NSString stringWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        [keys addObject:propertyName];
        //通过property_getAttributes函数可以获得属性的名字和@encode编码
        NSString * propertyAttribute = [NSString stringWithCString:property_getAttributes(property) encoding:NSUTF8StringEncoding];
        [attributes addObject:propertyAttribute];
    }
    free(properties);
    [keys enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [dict setValue:[model valueForKey:keys[idx]] forKey:keys[idx]];
    }];
    return dict;
}
@end

