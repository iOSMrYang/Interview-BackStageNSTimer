//
//  ViewController.m
//  Interview-BackStageNSTimer
//
//  Created by 杨杰 on 16/7/13.
//  Copyright © 2016年 杨杰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong)NSTimer *timer ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupBackgroundHandler];
    
}

- (void)setupBackgroundHandler
{
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(requestServerHowManyUnreadMessages) userInfo:nil repeats:YES];
    [timer fire];
    self.timer = timer;
}

- (void)requestServerHowManyUnreadMessages
{
    UIApplication* app = [UIApplication sharedApplication];
    
    if([app applicationState] == UIApplicationStateBackground)
    {
        NSLog(@"UIApplicationStateBackground");
    }
    else if([app applicationState] == UIApplicationStateActive)
    {
        NSLog(@"UIApplicationStateActive");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
