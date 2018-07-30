//
//  FViewController.m
//  SingletonModeDemo
//
//  Created by MacOS on 2018/7/30.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "FViewController.h"
#import "AFNetWoringManager.h"

@interface FViewController ()

@end

@implementation FViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    AFNetWoringManager * manager4 = [[AFNetWoringManager alloc] init];
    
    [manager4 POSTWithCompleteURL:@"" parameters:nil progress:^(id progress) {
        
    } success:^(id responseObject) {
        
    } failure:^(NSError *error) {
        
    }];
    
    NSLog(@"manager4 = %@",manager4);
    
    AFNetWoringManager * manager5 = [[AFNetWoringManager alloc] init];
    
    NSLog(@"manager5 = %@",manager5);
    
    AFNetWoringManager * manager6 = [[AFNetWoringManager alloc] init];
    
    NSLog(@"manager6 = %@",manager6);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
