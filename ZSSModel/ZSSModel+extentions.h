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

/**
 字典数组转model数组

 @param dictArray 字典数组
 @return model数组
 */
+ (NSArray *)zss_modelArrayWithDictArray:(NSArray <NSDictionary *>*)dictArray;

/**
  model数组转字典数组

 @param modelArray model数组
 @return 字典数组
 */
+ (NSArray *)zss_DictArrayWithModelArray:(NSArray *)modelArray;

/**
 json字符串转model数组

 @param json json 字符串
 @return model数组
 */
+ (NSArray *)zss_modelArrayWithJson:(id)json;

/**
 model转字典

 @param model model
 @return 字典
 */
+ (NSDictionary *)dictFromModel:(id)model;

@end

NS_ASSUME_NONNULL_END
