//
//  YYPModel+exchangeMethod.m
//  ZSSModelDemo
//
//  Created by 玉岳鹏 on 2019/4/30.
//  Copyright © 2019 玉岳鹏. All rights reserved.
//

#import "YYPModel+exchangeMethod.h"

@implementation YYPModel (exchangeMethod)
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
//        Class class = [self class];
        Class class = object_getClass ((id) self);

        SEL originSel = @selector(sayHelloToXiaoxiao);
        SEL latestSel =  @selector(sayIloveyouToXiaoxiao);
        Method originMethod = class_getClassMethod(class, originSel);
        Method latestMethod = class_getClassMethod(class, latestSel);
        BOOL haveAddedMethod = class_addMethod(class, originSel, method_getImplementation(latestMethod), method_getTypeEncoding(latestMethod));
        if (haveAddedMethod) {
            class_replaceMethod(class,latestSel , method_getImplementation(originMethod), method_getTypeEncoding(originMethod));
        }else {
            method_exchangeImplementations(originMethod, latestMethod);
        }
    });
}

+ (void)sayIloveyouToXiaoxiao {
    NSLog(@"I love you Xiaoxiao");
}
@end
