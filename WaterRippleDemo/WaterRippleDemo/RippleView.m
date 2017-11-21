//
//  RippleView.m
//  WaterRipple
//
//  Created by lsh726 on 2017/11/21.
//  Copyright © 2017年 liusonghong. All rights reserved.
//

#import "RippleView.h"
#import <QuartzCore/QuartzCore.h>


@interface RippleView ()

@end


@implementation RippleView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGFloat width = CGRectGetWidth(self.frame);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
    CGContextMoveToPoint(context, -5.0, _waveH);
    CGFloat y = 0;
    for (NSInteger i = 0; i<= width; i++) {
        /**
         正玄函数公式(高中知识已经忘记差不多了。。。。。-_-!):y=Asin(ω⊝+𝛟)+h
         A 振幅 表示Y高低程度
         ω 周期 一般是 T = 2 * M_PI
         𝛟 x轴横向距离
         h y轴高低
         */
        y = _waveA * sin(_waveω * i + _wave𝛟) + _waveH;
        CGContextAddLineToPoint(context, i, y);
    }
    _wave𝛟 -= 1/60.0;
    NSLog(@"%f",_wave𝛟);
    CGContextStrokePath(context);

//    CGContextMoveToPoint(context, -5.0, _waveH + 25.0);
//    for (NSInteger i = 0; i<= width; i++) {
//        /**
//         正玄函数公式(高中知识已经忘记差不多了。。。。。-_-!):y=Asin(ω⊝+𝛟)+h
//         A 振幅 表示Y高低程度
//         ω 周期 一般是 T = 2 * M_PI
//         𝛟 x轴横向距离
//         h y轴高低
//         */
//        y = _waveA*2* sin(_waveω/2.0 * i + _wave𝛟) + _waveH + 10.0;
//        CGContextAddLineToPoint(context, i, y);
//    }
//    CGContextStrokePath(context);
}


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self config];
        [self CADisplay];
    }
    return self;
}


- (void)config {
    _waveA = 10.0;
    _waveH = CGRectGetHeight(self.frame)/2;
    _waveω = M_PI_2/60.0;
    _wave𝛟 = 100.0;
}


- (void)CADisplay {
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(upDateAnimation)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}


//重绘
- (void)upDateAnimation {
    [self setNeedsDisplay];
}

@end
