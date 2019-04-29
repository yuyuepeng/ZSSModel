//
//  ZSSModel.m
//  ZSSModelDemo
//
//  Created by 玉岳鹏 on 2019/4/25.
//  Copyright © 2019 玉岳鹏. All rights reserved.
//

#import "ZSSModel.h"

@implementation ZSSModel

- (id)initWithDict:(NSDictionary *)dict {
    self = [self init];
    if (self) {
        NSMutableArray *keys = [NSMutableArray array];
        NSMutableArray *attributes = [NSMutableArray array];
        unsigned int outCount;
        /*
         * 例子
         * name = value3 attribute = T@"NSString",C,N,V_value3
         * name = value4 attribute = T^i,N,V_value4
         */
        objc_property_t *properties = class_copyPropertyList([self class], &outCount);
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
        for (NSString *key in keys) {
            if ([dict objectForKey:key] != nil) {
                [self setValue:[dict valueForKey:key] forKey:key];
            }
        }
    }
    return self;
}
@end
