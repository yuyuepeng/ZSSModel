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

@end
