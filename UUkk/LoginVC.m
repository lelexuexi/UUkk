
//
//  LoginVC.m
//  LoginPassword
//
//  Created by ios004 on 16/9/12.
//  Copyright © 2016年 zsb2c. All rights reserved.
//

#import "LoginVC.h"


#define Mboud [UIScreen mainScreen].bounds
#define MW [UIScreen mainScreen].bounds.size.width
#define MH [UIScreen mainScreen].bounds.size.height

@interface LoginVC ()
{
    CALayer * showLayer ;
    CAShapeLayer * ricLayer ;
    CAReplicatorLayer * makeRpLayer ;
    
}

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self abcmMMM];
}






- (void)makeViewNice
{
    CAShapeLayer * shap = [CAShapeLayer new];
    shap.frame = self.view.bounds ;
    
    
    UIBezierPath * bezierPath = [UIBezierPath bezierPath];
    
    [bezierPath moveToPoint:CGPointMake(200,200)];
    
    CGFloat  wd = 5 ;
    
    [bezierPath addLineToPoint:CGPointMake(200, 210)];
    [bezierPath addLineToPoint:CGPointMake(210, 210)];
    [bezierPath addLineToPoint:CGPointMake(210, 200)];
    
    [bezierPath closePath];
    
    ricLayer.path = bezierPath.CGPath ;
}


- (CAShapeLayer *)make:(CGPoint)one tw:(CGPoint)two
{
    
    CAShapeLayer * shap = [CAShapeLayer new];
    shap.frame = self.view.bounds ;
    
    
    UIBezierPath * bezierPath = [UIBezierPath bezierPath];
    
    [bezierPath moveToPoint:CGPointMake(200,200)];
    
    [bezierPath addLineToPoint:CGPointMake(200, 210)];
    [bezierPath addLineToPoint:CGPointMake(210, 210)];
    [bezierPath addLineToPoint:CGPointMake(210, 200)];
    
    [bezierPath closePath];
    
    ricLayer.path = bezierPath.CGPath ;
    return shap ;
    
}






- (void)abcmMMM
{
    
    CGFloat spen = 5 ;
    CGFloat with = MW - 2*spen ;
    makeRpLayer = [CAReplicatorLayer new];
    makeRpLayer.frame = CGRectMake(spen, (MH - with)/2.0, with, with);
    makeRpLayer.cornerRadius = with/2.0 ;
    makeRpLayer.backgroundColor = [UIColor lightGrayColor].CGColor;
    
    [self.view.layer addSublayer:makeRpLayer];
    
    
    
    CGFloat Rwith = with/2.0 ;
    
    ricLayer = [CAShapeLayer new];
    ricLayer.frame = makeRpLayer.bounds;
    
    
    UIBezierPath * bezierPath = [UIBezierPath bezierPath];
    
    [bezierPath moveToPoint:CGPointMake(0,Rwith)];
    
    CGFloat MM = 100 ;
    
    [bezierPath addCurveToPoint:CGPointMake(Rwith, Rwith)
                  controlPoint1:CGPointMake(Rwith/2.0,Rwith/2.0+MM)
                  controlPoint2:CGPointMake(Rwith/2.0,Rwith/2.0+MM)];
    
    [bezierPath addCurveToPoint:CGPointMake(Rwith*2,Rwith)
                  controlPoint1:CGPointMake(Rwith/2.0*3,Rwith/2.0+MM)
                  controlPoint2:CGPointMake(Rwith/2.0*3,Rwith/2.0+MM)];
    
    [bezierPath addCurveToPoint:CGPointMake(Rwith,Rwith)
                  controlPoint1:CGPointMake(Rwith/2.0*3,3*Rwith/2.0-MM)
                  controlPoint2:CGPointMake(Rwith/2.0*3,3*Rwith/2.0-MM)];
    
    [bezierPath addCurveToPoint:CGPointMake(0, Rwith)
                  controlPoint1:CGPointMake(Rwith/2.0,3*Rwith/2.0-MM)
                  controlPoint2:CGPointMake(Rwith/2.0,3*Rwith/2.0-MM)];
    
    [bezierPath closePath];
    
    
    ricLayer.path = bezierPath.CGPath ;
    
    ricLayer.fillColor = [UIColor colorWithRed:(arc4random()%255)/255.0 green:(arc4random()%255)/255.0 blue:(arc4random()%255)/255.0 alpha:1].CGColor;
    
    
    
    //    CFTimeInterval duration = 1;
    //
    //    //  2、设置了 动画后, 每个点 会同时 执行 变大变小
    //    CABasicAnimation * shrinkAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    //    shrinkAnimation.fromValue = @(1.0);
    //    shrinkAnimation.toValue = @(0.1);
    //    shrinkAnimation.duration = duration;
    //    shrinkAnimation.repeatCount = INFINITY;
    ////    shrinkAnimation.autoreverses = YES;     //    TODO: 打开这行,看看效果
    //    [ricLayer addAnimation:shrinkAnimation forKey:nil];
    
    
    //    showLayer  = [CALayer new];
    //    showLayer.frame = makeRpLayer.bounds;
    //    showLayer.backgroundColor = [UIColor clearColor].CGColor;
    //    showLayer.opacity = 0.5 ;
    //    [showLayer addSublayer:ricLayer];
    
    
    //    CABasicAnimation* rotationAnimation;
    //    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    //    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
    //    rotationAnimation.duration = 1.5;
    //    rotationAnimation.cumulative = YES;
    //    rotationAnimation.repeatCount = INFINITY;
    //
    //    [showLayer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
    
    
    //    CABasicAnimation *animation =  [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    //                                    //默认是顺时针效果，若将fromValue和toValue的值互换，则为逆时针效果
    //    animation.fromValue =[NSNumber numberWithFloat:0.f];
    //    animation.toValue =  [NSNumber numberWithFloat: M_PI *2];
    //    animation.duration  = 3;
    //    animation.autoreverses = NO;
    //    animation.fillMode =kCAFillModeForwards;
    //    animation.repeatCount = 500;
    //    [showLayer addAnimation:animation forKey:nil];
    
    
    
    
    
    
    
    //1.取出当前时间，转成动画暂停的时间
    //    CFTimeInterval pauseTime = [ricLayer convertTime:CACurrentMediaTime() fromLayer:nil];
    
    //2.设置动画的时间偏移量，指定时间偏移量的目的是让动画定格在该时间点的位置
    //    ricLayer.timeOffset = pauseTime;
    
    //3.将动画的运行速度设置为0， 默认的运行速度是1.0
    ricLayer.speed = 1;
    
    // 基本动画
    // 1.创建核心动画的对象
    CABasicAnimation* anim = [[CABasicAnimation alloc] init];
    //    self.anim = anim;
    anim.delegate = self;
    // 2.设置核心动画的操作
    anim.keyPath = @"transform.rotation";
    
    //        anim.fromValue = @(100); // 从哪
    //        anim.toValue = @(300); // 到哪
    
    anim.byValue = @(2 * M_PI);
    
    anim.duration = 10;
    
    anim.repeatCount = INT_MAX; // 重复次数
    
    // 动画完毕以后不回到原来的位置
    anim.fillMode = kCAFillModeForwards;
    anim.removedOnCompletion = NO;
    
    // 3.添加到layer上
    [ricLayer addAnimation:anim forKey:nil];
    
    
    [makeRpLayer addSublayer:ricLayer];
    //  1、设置 拷贝份数、旋转
    int dotsNum = 50;
    CGFloat angle =  M_PI / dotsNum;
    makeRpLayer.instanceCount = dotsNum;
    makeRpLayer.instanceTransform = CATransform3DMakeRotation(angle, 0, 0, 1);
    makeRpLayer.instanceDelay = 0.5;
    
}



-(CAGradientLayer *)backgroundLayer{
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.view.bounds;
    gradientLayer.colors = @[(__bridge id)[UIColor purpleColor].CGColor,(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor greenColor].CGColor,(__bridge id)[UIColor yellowColor].CGColor,(__bridge id)[UIColor blackColor].CGColor];
    gradientLayer.startPoint = CGPointMake(0.5, 0);
    gradientLayer.endPoint = CGPointMake(0.5, 1);
    gradientLayer.locations = @[@0.2,@0.4,@0.6,@0.7,@0.9];
    //    gradientLayer.locations = @[@0.65,@1];
    return gradientLayer;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
