//
//  ViewController.m
//  SingletonModeDemo
//
//  Created by MacOS on 2018/7/30.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "ViewController.h"
#import "AFNetWoringManager.h"
#import "FViewController.h"
#import "AFNetWorkManager2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
    //AFNetWorkManager----------
    
    AFNetWoringManager * manager1 = [AFNetWoringManager shareManager];
    
    [manager1 POSTWithCompleteURL:@"" parameters:nil progress:^(id progress) {
        
    } success:^(id responseObject) {
        
    } failure:^(NSError *error) {
        
    }];
    
    NSLog(@"manager1 = %@",manager1);
    
    AFNetWoringManager * manager2 = [[AFNetWoringManager alloc] init];
    
    [manager2 GETWithCompleteURL:@"" parameters:nil progress:^(id progress) {
        
    } success:^(id responseObject) {
        
    } failure:^(NSError *error) {
        
    }];
    
    NSLog(@"manager2 = %@",manager2);
    
    AFNetWoringManager * manager3 = [[AFNetWoringManager alloc] init];
    
    [manager3 uploadImagesWihtImgArr:@[] url:@"" parameters:nil block:^(id objc, BOOL success) {
        
    }];
    
    NSLog(@"manager3 = %@",[manager3 copy]);
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(clickbtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
    //AFNetWorkManager2------------
    
    [AFNetWorkManager2 POSTWithCompleteURL:@"" parameters:nil progress:^(id progress) {
        
    } success:^(id responseObject) {
        
    } failure:^(NSError *error) {
        
    }];
    
    [AFNetWorkManager2 GETWithCompleteURL:@"" parameters:nil progress:^(id progress) {
        
    } success:^(id responseObject) {
        
    } failure:^(NSError *error) {
        
    }];
    
    [AFNetWorkManager2 uploadImagesWihtImgArr:@[] url:@"" parameters:nil block:^(id objc, BOOL success) {
        
    }];
}
-(void)clickbtn{
    
    FViewController *f = [[FViewController alloc] init];
    [self presentViewController:f animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
