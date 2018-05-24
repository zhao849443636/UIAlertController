//
//  ZQWAlertController.h
//  HouseCoordinate
//
//  Created by aaa on 2018/4/25.
//  Copyright © 2018年 CCBCKJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZQWAlertController : NSObject

/**
 显示AlertController

 @param controller 调用的Controller
 @param title title
 @param message message
 @param cancelActionTitle 取消title
 @param okActionTitle 确认title
 @param tapOKAction 确认按钮执行的方法
 */
+ (void)showAlertControllerWithController:(id)controller title:(nullable NSString *)title Message:(nullable NSString *)message cancelActionTitle:(nullable NSString *)cancelActionTitle okActionTitle:(nullable NSString *)okActionTitle tapOKAction:(void (^)(UIAlertAction *action))tapOKAction;

/**
 显示AlertController没有取消按钮
 
 @param controller 调用的Controller
 @param title title
 @param message message
 @param okActionTitle 确认title
 @param tapOKAction 确认按钮执行的方法
 */
+ (void)showAlertControllerNoCancelWithController:(id)controller title:(nullable NSString *)title Message:(nullable NSString *)message  okActionTitle:(nullable NSString *)okActionTitle tapOKAction:(void (^)(UIAlertAction *action))tapOKAction;

/**
 显示AlertController有取消按钮点击事件

 @param controller 显示的Controller 一般为self
 @param title title
 @param message message
 @param cancelActionTitle 取消title
 @param okActionTitle 确认title
 @param tapOKAction 确认按钮执行的方法
 @param tapCancelAction 取消按钮执行的方法
 */
+ (void)showAlertControllerExistCancelActionWithController:(id)controller title:(nullable NSString *)title Message:(nullable NSString *)message cancelActionTitle:(nullable NSString *)cancelActionTitle okActionTitle:(nullable NSString *)okActionTitle tapOKAction:(void (^)(UIAlertAction *OKAction))tapOKAction tapCancelAction:(void(^)(UIAlertAction *cancelAction))tapCancelAction;



@end
