//
//  BaseImageView.m
//  IBHowUse
//
//  Created by itm on 2017/8/31.
//  Copyright © 2017年 zwl. All rights reserved.
//

#import "BaseImageView.h"
IB_DESIGNABLE
@implementation BaseImageView

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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
