//
//  SVCustomViewContainer.m
//  SVProgressHUD
//
//  Created by Manuel García-Estañ on 22/03/2019.
//

#import "SVCustomViewContainer.h"
#import "SVCustomHUDView.h"

@implementation SVCustomViewContainer

- (instancetype)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		self.backgroundColor = [UIColor clearColor];
	}
	return self;
}

- (void)setContentView:(UIView *)contentView {
	[self showContentView:contentView hudDuration:0];
}

-(void)showContentView:(UIView *)contentView hudDuration:(NSTimeInterval)duration {
	if (!contentView) {
		[self resetContentView];
		return;
	}
	
	if (_contentView != contentView) {
		[self resetContentView];
		[self addSubview:contentView];
		if ([contentView conformsToProtocol:@protocol(SVCustomHUDView)] && [contentView respondsToSelector:@selector(startHUDAnimationWithDuration:)]) {
			[((id<SVCustomHUDView>)contentView) startHUDAnimationWithDuration:duration];
		}
	}
	contentView.frame = CGRectMake(0, 0, CGRectGetWidth(contentView.frame),  CGRectGetHeight(contentView.frame));
	self.frame = contentView.frame;
	
	_contentView = contentView;
}

- (void) resetContentView {
	if ([_contentView conformsToProtocol:@protocol(SVCustomHUDView)] && [_contentView respondsToSelector:@selector(startHUDAnimationWithDuration:)]) {
		[((id<SVCustomHUDView>)_contentView) stopHUDAnimation];
	}
	[_contentView removeFromSuperview];
	_contentView = nil;
}

-(void)setProgress:(float)progress {
	if ([_contentView conformsToProtocol:@protocol(SVCustomHUDView)] && [_contentView respondsToSelector:@selector(setHUDProgress:)]) {
		[((id<SVCustomHUDView>)_contentView) setHUDProgress:progress];
	}
}

@end
