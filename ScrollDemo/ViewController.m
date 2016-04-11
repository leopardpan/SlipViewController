//
//  ViewController.m
//  ScrollDemo
//
//  Created by baixinpan on 16/4/11.
//  Copyright © 2016年 baixinpan. All rights reserved.
//

#import "ViewController.h"
#import "SwipableViewController.h"

#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self enter];
    // Do any ad;ditional setup after loading the view, typically from a nib.
}

- (void)enter {

    
    ViewController1 *vc1 = [[ViewController1 alloc] init];
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    ViewController3 *vc3 = [[ViewController3 alloc] init];
    ViewController4 *vc4 = [[ViewController4 alloc] init];
    
    vc1.view.backgroundColor  = [UIColor greenColor];
    vc2.view.backgroundColor  = [UIColor yellowColor];
    vc3.view.backgroundColor  = [UIColor redColor];
    vc4.view.backgroundColor  = [UIColor blueColor];
    
    SwipableViewController *newsSVC = [[SwipableViewController alloc] initWithTitle:@"测试"
                                                                       andSubTitles:@[@"资讯", @"热点", @"博客", @"推荐"]
                                                                     andControllers:@[vc1, vc2, vc3,vc4]
                                                                        underTabbar:NO];
    [self.navigationController pushViewController:newsSVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
