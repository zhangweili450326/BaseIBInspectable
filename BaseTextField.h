//
//  BaseTextField.h
//  IBHowUse
//
//  Created by itm on 2017/8/31.
//  Copyright © 2017年 zwl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTextField : UITextField

@property (nonatomic,assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic,assign) IBInspectable CGFloat borderWith;

@property (nonatomic,assign) IBInspectable UIColor *borderColor;

@property (nonatomic,assign) IBInspectable UIImage *leftImage;

@property (nonatomic,assign) IBInspectable CGSize leftSize;

@property (nonatomic,assign) IBInspectable UIImage *rightImage;

@property (nonatomic,assign) IBInspectable CGSize rightSize;

@property (nonatomic,strong) UIButton *leftButton;

@property (nonatomic,strong) UIButton *rightButton;

@property (nonatomic,copy) void (^rightBlock)(BOOL isSelect);

@end
