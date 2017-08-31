//
//  BaseLabel.m
//  IBHowUse
//
//  Created by itm on 2017/8/31.
//  Copyright © 2017年 zwl. All rights reserved.
//

#import "BaseLabel.h"
IB_DESIGNABLE
@implementation BaseLabel

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

-(void)setInsetTop:(CGFloat)insetTop{
    _insetTop=insetTop;
}

-(void)setInsetLeft:(CGFloat)insetLeft{
    _insetLeft=insetLeft;
    
}

-(void)setInsetBottom:(CGFloat)insetBottom{
    _insetBottom=insetBottom;
   
}

-(void)setInsetRight:(CGFloat)insetRight{
    _insetRight=insetRight;
  
}

-(void)drawTextInRect:(CGRect)rect{
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, UIEdgeInsetsMake(_insetTop, _insetLeft, _insetBottom, _insetRight))];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
