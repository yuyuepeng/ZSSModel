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
    YYPModel *model = [[YYPModel alloc] initWithDict:@{@"name":@"2222",@"width":@"444",@"height":@"23"}];
    
    NSLog(@"model.name = %@, model.width = %@, model.height = %@",model.name,model.width,model.height);
    NSArray <YYPModel *>*models1 = [YYPModel zss_modelArrayWithDictArray:@[@{@"name":@"111",@"width":@"222",@"height":@"333"},@{@"name":@"1",@"width":@"2",@"height":@"3"},@{@"name":@"11",@"width":@"22",@"height":@"33"},@{@"name":@"1111",@"width":@"2222",@"height":@"3333"}]];
    NSInteger m = 0,n = 0;
    for (YYPModel *model in models1) {
        NSLog(@"models1[%ld].name = %@",m,model.name);
        m ++;
    }
    NSString *path = [[NSBundle mainBundle] pathForResource:@"models" ofType:@"json"];
    // 将文件数据化
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    NSArray <YYPModel *>*models = [YYPModel zss_modelArrayWithJson:[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]];

    for (YYPModel *model in models) {
        NSLog(@"models[%ld]%@",n,model.name);
        n ++;
    }
    NSArray *arr = [YYPModel zss_DictArrayWithModelArray:models];
    NSLog(@"arr = %@",arr);
    // Do any additional setup after loading the view.
}


@end
