//
//  AppDelegate.h
//  Anxiety Mixer
//
//  Created by Devin Sturgeon on 9/24/13.
//  Copyright (c) 2013 Devin Sturgeon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property AVAudioPlayer
*noisePlayer;

@end
