//
//  SVCustomHUDView.h
//  SVProgressHUD
//
//  Created by Manuel García-Estañ on 22/03/2019.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SVCustomHUDView <NSObject>
@optional
- (void) startHUDAnimationWithDuration:(NSTimeInterval) duration;
- (void) stopHUDAnimation;
- (void) setHUDProgress:(float) progress;
@end

NS_ASSUME_NONNULL_END
