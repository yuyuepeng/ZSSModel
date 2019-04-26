//
//  ZSSModel.h
//  ZSSModelDemo
//
//  Created by 玉岳鹏 on 2019/4/25.
//  Copyright © 2019 玉岳鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN
//files  层级一定得符合真实层级  Git tag要符合spec文件的tag
@interface ZSSModel : NSObject
    
- (id)initWithDict:(NSDictionary *)dict;
    
@end

NS_ASSUME_NONNULL_END
