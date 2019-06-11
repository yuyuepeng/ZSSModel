//
//  YYPModel.h
//  ZSSModelDemo
//
//  Created by 玉岳鹏 on 2019/4/25.
//  Copyright © 2019 玉岳鹏. All rights reserved.
//

#import "ZSSModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface YYPModel : ZSSModel
    
@property(nonatomic, copy) NSString *name;
    
@property(nonatomic, copy) NSString *width;

@property(nonatomic, copy) NSString *height;

+ (void)sayHelloToXiaoxiao;

@end

NS_ASSUME_NONNULL_END
