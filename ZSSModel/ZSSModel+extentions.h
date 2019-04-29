//
//  ZSSModel+extentions.h
//  ZSSModelDemo
//
//  Created by 玉岳鹏 on 2019/4/26.
//  Copyright © 2019 玉岳鹏. All rights reserved.
//

#import "ZSSModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZSSModel (extentions)

+ (NSArray *)zss_modelArrayWithDictArray:(NSArray <NSDictionary *>*)dictArray;

+ (NSArray *)zss_DictArrayWithModelArray:(NSArray *)modelArray;

@end

NS_ASSUME_NONNULL_END
