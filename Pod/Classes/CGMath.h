//
//  CGMath.h
//
//  Created by Emilio Peláez on 7/30/11.
//  Copyright © 2015 Emilio Peláez. All rights reserved.
//

#ifndef CGMath_h
#define CGMath_h

#import <CoreGraphics/CoreGraphics.h>
#import "UIKit/UIKit.h"

//	t is the interpolation value. It should be in the range [0, 1], but it's your responsability to make sure it's in that range
//	In some cases you might want to use values outside that range, if you don't, you can use clamp

//	Precise method which guarantees v = v1 when t = 1.
//	https://en.wikipedia.org/wiki/Linear_interpolation

CG_INLINE CGFloat lerp(CGFloat v0, CGFloat v1, CGFloat t){ return (1 - t) * v0 + t * v1; }
CGFloat lerpInRange(NSRange r, CGFloat t);

CG_INLINE CGFloat inverseLerp(CGFloat v0, CGFloat v1, CGFloat v){ return (v - v0) / (v1 - v0); }
CGFloat inverseLerpInRange(NSRange r, CGFloat v);

CG_INLINE CGFloat clamp(CGFloat min, CGFloat max, CGFloat v){ return MAX(min, MIN(max, v)); }
CG_INLINE CGFloat clamp01(CGFloat v){ return clamp(0, 1, v); }
CGFloat clampToRange(NSRange r, CGFloat v);

CGFloat remap(CGFloat r00, CGFloat r01, CGFloat r10, CGFloat r11, CGFloat v);
CGFloat remapFromRangeToRange(CGFloat v, NSRange r0, NSRange r1);

//	CGPoint
CG_INLINE CGPoint CGPointAdd(CGPoint point1, CGPoint point2){ return CGPointMake(point1.x + point2.x, point1.y + point2.y); }

CGPoint CGPointAddBatch(CGPoint *points, NSInteger count);

CG_INLINE CGPoint CGPointSubstract(CGPoint point1, CGPoint point2){ return CGPointMake(point1.x - point2.x, point1.y - point2.y); }

CG_INLINE CGPoint CGPointMultiply(CGPoint point, CGFloat scalar){ return CGPointMake(point.x * scalar, point.y * scalar); }


CG_INLINE CGFloat CGPointDotProduct(CGPoint point1, CGPoint point2){ return point1.x * point2.x + point1.y * point2.y; }

CG_INLINE CGFloat CGPointGetMagnitude(CGPoint point){ return sqrtf((point.x * point.x) + (point.y * point.y)); }

CGPoint CGPointGetNormalized(CGPoint point);

CGPoint CGPointLerp(CGPoint v0, CGPoint v1, CGFloat t);

//	CGSize
CG_INLINE CGSize CGSizeMin(CGSize size1, CGSize size2){ return CGSizeMake(MIN(size1.width, size2.width), MIN(size1.height, size2.height)); }
CG_INLINE CGSize CGSizeMax(CGSize size1, CGSize size2){ return CGSizeMake(MAX(size1.width, size2.width), MAX(size1.height, size2.height)); }

CG_INLINE CGSize CGSizeAdd(CGSize size1, CGSize size2){ return CGSizeMake(MAX(0, size1.width + size2.width), MAX(0, size1.height + size2.height)); }

CGSize CGSizeMakeWithAspectRatioThatFitsSize(CGFloat ratio, CGSize size);

//	Aspect ratio is calculated as the number of times the witdh can fit in the height (ar = width/height)
//	A CGSize {200, 100} would have an aspect ratio of 2
CG_INLINE CGFloat CGSizeGetAspectRatio(CGSize size){ return	size.width / size.height; }

CGSize CGSizeLerp(CGSize v0, CGSize v1, CGFloat t);

CG_INLINE BOOL CGSizeCanFitSize(CGSize size1, CGSize size2){ return size1.width >= size2.height && size1.height >= size2.height; }

//	CGRect
CG_INLINE CGRect CGRectMakeWithOriginAndSize(CGPoint origin, CGSize size){ return CGRectMake(origin.x, origin.y, size.width, size.height); }

CG_INLINE CGRect CGRectMakeWithCenterAndSize(CGPoint center, CGSize size){ return CGRectMake(center.x - size.width/2, center.y - size.height/2, size.width, size.height); }

CGRect CGRectMakeWithRectAndAspectRatio(CGRect rect, CGFloat ratio);

CGRect CGRectMakeWithRectAndAspectRatioFromRect(CGRect rect, CGRect rectForRatio);

CGRect CGRectLerp(CGRect v0, CGRect v1, CGFloat t);

CGRect CGRectEdgeInset(CGRect rect, UIEdgeInsets insets);

CG_INLINE CGPoint CGRectGetCenter(CGRect rect){ return CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect)); }

#endif /* CGMath_h */
