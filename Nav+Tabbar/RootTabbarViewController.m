//
//  RootTabbarViewController.m
//  Nav+Tabbar
//
//  Created by 熊维东 on 16/5/18.
//  Copyright © 2016年 熊维东. All rights reserved.
//

#import "RootTabbarViewController.h"
#import "CustomeViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ForthViewController.h"


@interface RootTabbarViewController ()
@property(nonatomic ,strong )CustomeViewController *customNavc ;
@property(nonatomic ,strong )SecondViewController  *secondVC ;
@property(nonatomic ,strong )FirstViewController  *firstVC ;
@property(nonatomic ,strong )ThirdViewController  *thirdVC ;
@property(nonatomic ,strong )ForthViewController  *forthVC ;

@end

@implementation RootTabbarViewController
@synthesize customNavc;

-(CustomeViewController *)customNavc
{
    if (nil == customNavc) {
        if (nil == customNavc) {
         
            customNavc = [[CustomeViewController alloc]initWithRootViewController:customNavc];
        } else {
            [customNavc popToRootViewControllerAnimated:YES];
        }
//
    }
    return customNavc;
    
}

-(FirstViewController *)firstVC
{
    if (nil == _firstVC ) {
        _firstVC = [[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:nil];
        _firstVC.tabBarItem.title = @"首页";
        _firstVC.tabBarItem.image =[UIImage imageNamed:@"icon_movie"];
        
    }
    return _firstVC;

    
}

-(SecondViewController *)secondVC
{
    if (nil == _secondVC ) {
        _secondVC = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
        _secondVC.tabBarItem.title = @"影院";
        _secondVC.tabBarItem.image =[UIImage imageNamed:@"icon_theater"];
        
    }
    return _secondVC;
}

-(ThirdViewController *)thirdVC
{
    if (nil == _thirdVC) {
        _thirdVC = [[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:nil];
        _thirdVC.tabBarItem.title = @"发现";
        _thirdVC.tabBarItem.image =[UIImage imageNamed:@"icon_found"];
        
    }
    return _thirdVC;
}
-(ForthViewController *)forthVC
{
    if (nil == _forthVC) {
        _forthVC = [[ForthViewController alloc]initWithNibName:@"ForthViewController" bundle:nil];
        _forthVC.tabBarItem.title = @"我的";
        _forthVC.tabBarItem.image =[UIImage imageNamed:@"icon_mine"];
        
    }
    return _forthVC;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadSubViewControllers];
    self.tabBar.tintColor = [UIColor colorWithRed:208.0f/255 green:38.0f/255 blue:43.0f/255 alpha:1.0f];
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.delegate = self;
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(showLocationViewWithNotification:) name:@"PresentLocationViewController" object:nil];
}

- (void)loadSubViewControllers{
    //懒加载需要用点方法实现取方法
    UINavigationController *vc1 = [[UINavigationController alloc]initWithRootViewController:self.firstVC];
    UINavigationController *vc2 = [[UINavigationController alloc]initWithRootViewController:self.secondVC];
    UINavigationController *vc3 = [[UINavigationController alloc]initWithRootViewController:self.thirdVC];
    UINavigationController *vc4 = [[UINavigationController alloc]initWithRootViewController:self.forthVC];
    
    self.viewControllers = @[vc1,vc2,vc3,vc4];
}

#pragma mark - Notification Methods
- (void)showLocationViewWithNotification:(NSNotification *)notification
{
    if(self.presentedViewController)
        [self dismissViewControllerAnimated:NO completion:nil];
    [self presentViewController:self.customNavc animated:YES completion:nil];
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
