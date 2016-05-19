//
//  BaseViewController.h
//  Nav+Tabbar
//
//  Created by 熊维东 on 16/5/18.
//  Copyright © 2016年 熊维东. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomeViewController.h"
@interface BaseViewController : UIViewController

- (void)leftItemTapped;
- (void)rightItemTapped;

- (void)setLeftNaviItemWithTitle:(NSString *)title imageName:(NSString *)imageName;
- (void)setRightNaviItemWithTitle:(NSString *)title imageName:(NSString *)imageName;
- (void)setLeftNaviItemWithTitle:(NSString *)title size:(CGFloat)size imageName:(NSString *)imageName;
- (void)setNaviTitle:(NSString *)title size:(CGFloat)size;


@end
