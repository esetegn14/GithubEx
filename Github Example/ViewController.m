//
//  ViewController.m
//  Github Example
//
//  Created by Emmanuel Setegn on 2/10/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "ViewController.h"

#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    //AFNetworking Test
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager
     //Add JSON 
     GET:@"http://headers.jsontest.com/" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *responseDic = responseObject;
        
        for(NSString *s in responseDic){
            NSLog(@"Key: %@ | Value: %@",s,[responseDic objectForKey:s]);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
