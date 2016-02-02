//
//  UIColor+Utility.m
//  VCHomework
//
//  Created by 2 on 2/2/16.
//  Copyright © 2016 2. All rights reserved.
//

#import "UIColor+Utility.h"

@implementation UIColor (Utility)
+ (UIColor *)randomColor {
    CGFloat red = arc4random_uniform(255) / 255.;
    CGFloat green = arc4random_uniform(255) / 255.;
    CGFloat blue = arc4random_uniform(255) / 255.;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}
@end
