//
//  BaseTextField.m
//  IBHowUse
//
//  Created by itm on 2017/8/31.
//  Copyright © 2017年 zwl. All rights reserved.
//

#import "BaseTextField.h"

IB_DESIGNABLE

@interface BaseTextField ()

@end

@implementation BaseTextField

-(void)setCornerRadius:(CGFloat)cornerRadius{
    _cornerRadius=cornerRadius;
    self.layer.cornerRadius=_cornerRadius;
    self.layer.masksToBounds=YES;
}

-(void)setBorderWith:(CGFloat)borderWith{
    _borderWith=borderWith;
    self.layer.borderWidth=_borderWith;
}

-(void)setBorderColor:(UIColor *)borderColor{
    _borderColor=borderColor;
    self.layer.borderColor=_borderColor.CGColor;
}

-(void)setLeftImage:(UIImage *)leftImage{
    _leftImage=leftImage;
    self.leftButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.leftButton setImage:_leftImage forState:UIControlStateNormal];
    self.leftButton.userInteractionEnabled=NO;
    self.leftView=self.leftButton;
    self.leftViewMode=UITextFieldViewModeAlways;
    [self.leftView sizeToFit];
}

-(void)setLeftSize:(CGSize)leftSize{
    _leftSize=leftSize;
    CGFloat width=_leftSize.width;
    CGFloat height=_leftSize.height;
    self.leftButton.bounds=CGRectMake(0, 0, width, height);
}

-(void)setRightImage:(UIImage *)rightImage{
    _rightImage=rightImage;
    self.rightButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.rightButton setImage:_rightImage forState:UIControlStateNormal];
    [self.rightButton addTarget:self action:@selector(btnRight:) forControlEvents:UIControlEventTouchUpInside];
    self.rightView=self.rightButton;
    self.rightViewMode=UITextFieldViewModeAlways;
    [self.rightView sizeToFit];
    
}

-(void)setRightSize:(CGSize)rightSize{
    _rightSize=rightSize;
    CGFloat width =_rightSize.width;
    CGFloat height =_rightSize.height;
    self.rightButton.bounds=CGRectMake(0, 0, width, height);
}

-(void)btnRight:(UIButton *)sender{
    self.rightButton.selected=!sender.selected;
    if (self.rightBlock) {
        self.rightBlock(self.rightButton.selected);
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
