//
//  ZQWAlertController.m
//  HouseCoordinate
//
//  Created by aaa on 2018/4/25.
//  Copyright © 2018年 CCBCKJ. All rights reserved.
//

#import "ZQWAlertController.h"

@implementation ZQWAlertController

+ (void)showAlertControllerWithController:(id)controller title:(nullable NSString *)title Message:(nullable NSString *)message cancelActionTitle:(nullable NSString *)cancelActionTitle okActionTitle:(nullable NSString *)okActionTitle tapOKAction:(void (^)(UIAlertAction *action))tapOKAction {
    

    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelActionTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
    }];
    
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:okActionTitle style:UIAlertActionStyleDefault handler:tapOKAction];
    
    [alertController addAction:cancelAction];
    [alertController addAction:otherAction];
    [controller presentViewController:alertController animated:YES completion:nil];
    

}

+(void)showAlertControllerNoCancelWithController:(id)controller title:(NSString *)title Message:(NSString *)message okActionTitle:(NSString *)okActionTitle tapOKAction:(void (^)(UIAlertAction *))tapOKAction {
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:okActionTitle style:UIAlertActionStyleDefault handler:tapOKAction];
    
    [alertController addAction:otherAction];
    [controller presentViewController:alertController animated:YES completion:nil];
    
    
}

+(void)showAlertControllerExistCancelActionWithController:(id)controller title:(NSString *)title Message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle okActionTitle:(NSString *)okActionTitle tapOKAction:(void (^)(UIAlertAction *))tapOKAction tapCancelAction:(void (^)(UIAlertAction *))tapCancelAction {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelActionTitle style:UIAlertActionStyleCancel handler:tapCancelAction];
    
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:okActionTitle style:UIAlertActionStyleDefault handler:tapOKAction];
    
    [alertController addAction:cancelAction];
    [alertController addAction:otherAction];
    [controller presentViewController:alertController animated:YES completion:nil];
}


@end
