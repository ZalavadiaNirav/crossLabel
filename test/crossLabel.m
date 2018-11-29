//
//  crossLabel.m
//  test
//
//  Created by Gaurav Amrutiya on 29/11/18.
//  Copyright © 2018 Gaurav Amrutiya. All rights reserved.
//

#import "crossLabel.h"

@implementation crossLabel


-(void)awakeFromNib
{
    [super awakeFromNib];
    [self RotateLabel];
}

-(void)RotateLabel
{
    NSLog(@"rotation %f",_rotation);
    CGAffineTransform t=CGAffineTransformMakeTranslation(-_rotation/7.5,0);
    self.transform=CGAffineTransformRotate(t, _rotation);
}


// this will create head indent and tail indent
- (void)drawTextInRect:(CGRect)uiLabelRect {
    UIEdgeInsets edge= UIEdgeInsetsMake(0, 30, 0, 130);
    [super drawTextInRect:UIEdgeInsetsInsetRect(uiLabelRect,edge)];
}


@end
