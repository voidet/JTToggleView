//
//  JTToggleView.h
//
//  Created by Richard S on 16/03/2014.
//  Copyright (c) 2014 Jotlab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JTToggleView : UIView

@property (nonatomic, assign) BOOL isOn;

- (void)toggleOn;
- (void)toggleOff;

@end
