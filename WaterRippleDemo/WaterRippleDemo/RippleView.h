//
//  RippleView.h
//  WaterRipple
//
//  Created by lsh726 on 2017/11/21.
//  Copyright © 2017年 liusonghong. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 正玄函数公式(高中知识已经忘记差不多了。。。。。-_-!):y=Asin(ω⊝+𝛟)+h
 A 振幅 表示Y高低程度    默认初值 10.0
 ω 周期 一般是 T = 2 * M_PI ，   默认初值 M_PI_2/60.0
 𝛟 x轴横向距离    默认初值 100.0
 h y轴高低   默认初值 CGRectGetHeight(self.frame)/2
 */
@interface RippleView : UIView
@property (nonatomic, assign) CGFloat waveA;//振幅A，和waveH 一起决定波峰波谷的高度
@property (nonatomic, assign) CGFloat waveω;//周期，值越小波纹越密集
@property (nonatomic, assign) CGFloat wave𝛟;//x轴横向距离，可以理解为控制水波前进快慢
@property (nonatomic, assign) CGFloat waveH;//在Y轴初始位置

- (instancetype)initWithFrame:(CGRect)frame;
@end
