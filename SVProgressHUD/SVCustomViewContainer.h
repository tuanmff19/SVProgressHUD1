//
//  SVCustomViewContainer.h
//  SVProgressHUD
//
//  Created by Manuel García-Estañ on 22/03/2019.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SVCustomViewContainer : UIView
@property(nonatomic, nullable) UIView *contentView;
-(void)showContentView:(UIView * _Nullable)contentView hudDuration:(NSTimeInterval) duration;
- (void)setProgress:(float) progress;
@end

NS_ASSUME_NONNULL_END
