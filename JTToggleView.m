//
//  JTToggleView.m
//
//  Created by Richard S on 16/03/2014.
//  Copyright (c) 2014 Jotlab. All rights reserved.
//

#import "JTToggleView.h"

@interface JTToggleView()

@property (nonatomic, strong) UIImageView *toggleDot;

@end

@implementation JTToggleView

- (id)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	UIImageView *track = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
	track.image = [UIImage imageNamed:@"toggleTrack"];
	track.contentMode = UIViewContentModeScaleAspectFit;

	self.toggleDot = [[UIImageView alloc] initWithFrame:CGRectMake(47, 2, 36, 36)];
	self.toggleDot.image = [UIImage imageNamed:@"toggleOff"];

	self.backgroundColor = [UIColor clearColor];

	self.isOn = NO;

	[self addSubview:track];
	[self addSubview:self.toggleDot];

	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(toggle)];
	[self addGestureRecognizer:tap];

	return self;
}

- (void)toggle {
	if (self.isOn) {
		[self toggleOff];
	} else {
		[self toggleOn];
	}
}

- (void)toggleOn {
	CGRect destFrame = CGRectMake(4, 2, 36, 36);
	__block JTToggleView *weakSelf = self;
	weakSelf.toggleDot.image = [UIImage imageNamed:@"toggleOn"];
	[UIView animateWithDuration:0.15 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
		weakSelf.toggleDot.frame = destFrame;
	} completion:^(BOOL finished) {
		weakSelf.isOn = YES;
	}];
}

- (void)toggleOff {
	CGRect destFrame = CGRectMake(47, 2, 36, 36);
	__block JTToggleView *weakSelf = self;
	weakSelf.toggleDot.image = [UIImage imageNamed:@"toggleOff"];
	[UIView animateWithDuration:0.15 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
		weakSelf.toggleDot.frame = destFrame;
	} completion:^(BOOL finished) {
		weakSelf.isOn = NO;
	}];
}

@end
