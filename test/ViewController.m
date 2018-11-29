//
//  ViewController.m
//  test
//
//  Created by Gaurav Amrutiya on 10/11/18.
//  Copyright © 2018 Gaurav Amrutiya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

   
    NSMutableParagraphStyle *style =  [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
//    style.alignment = NSTextAlignmentCenter;
//    style.firstLineHeadIndent = 10;
//    style.headIndent = 200;

    
    NSAttributedString *attrText = [[NSAttributedString alloc] initWithString:@"This is text sdfdsf sdsrty" attributes:@{ NSParagraphStyleAttributeName : style}];
    
    _crossLbl.attributedText = attrText;
    
    
    
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self->_btn.transform=CGAffineTransformMakeRotation(M_PI_2);
    
    [self animate];
}

-(void)animate
{
    [UIView animateKeyframesWithDuration:2.0 delay:0.5 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        
        [UIView addKeyframeWithRelativeStartTime:2.0 relativeDuration:0.0 animations:^{
            
          
            CGAffineTransform rotateTransform = CGAffineTransformRotate(CGAffineTransformMakeTranslation(0, -200), M_PI_2);
            self->_btn.transform=rotateTransform;
            
        }];
        
    } completion:nil];
    
   
    
    
//    NSTimeInterval duration = 10.0f;
//    CGFloat angle = M_PI / 2.0f;
//    CGAffineTransform rotateTransform = CGAffineTransformRotate(CGAffineTransformMakeTranslation(0, -100), angle);
//
//    [UIView animateWithDuration:duration delay:0 options:UIViewAnimationOptionRepeat| UIViewAnimationOptionCurveLinear animations:^{
//        self->_btn.transform = rotateTransform;
//    } completion:nil];
//
}


@end
