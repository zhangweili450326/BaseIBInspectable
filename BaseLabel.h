//
//  BaseLabel.h
//  IBHowUse
//
//  Created by itm on 2017/8/31.
//  Copyright © 2017年 zwl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseLabel : UILabel

@property (nonatomic,assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic,assign) IBInspectable CGFloat borderWith;

@property (nonatomic,assign) IBInspectable UIColor *borderColor;

@property (nonatomic,assign) IBInspectable CGFloat insetTop;

@property (nonatomic,assign) IBInspectable CGFloat insetLeft;

@property (nonatomic,assign) IBInspectable CGFloat insetBottom;

@property (nonatomic,assign) IBInspectable CGFloat insetRight;

@end
