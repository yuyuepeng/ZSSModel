//
//  ViewController.m
//  ZSSModelDemo
//
//  Created by 玉岳鹏 on 2019/4/25.
//  Copyright © 2019 玉岳鹏. All rights reserved.
//

#import "ViewController.h"
#import "YYPModel.h"
#import "ZSSModel+extentions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    YYPModel *model = [[YYPModel alloc] initWithDict:@{@"name":@"2222",@"width":@"444",@"height":@"23"}];
    NSArray <YYPModel *>*models = [YYPModel zss_modelArrayWithDictArray:@[@{@"name":@"111",@"width":@"222",@"height":@"333"},@{@"name":@"1",@"width":@"2",@"height":@"3"},@{@"name":@"11",@"width":@"22",@"height":@"33"},@{@"name":@"1111",@"width":@"2222",@"height":@"3333"}]];
    for (YYPModel *model in models) {
        NSLog(@"%@",model.name);
    }
    NSArray *arr = [YYPModel zss_DictArrayWithModelArray:models];
    NSLog(@"%@,dmsmd",arr);
    
    // Do any additional setup after loading the view.
}


@end
