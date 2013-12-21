//
//  VolumesViewController.h
//  Anxiety Mixer
//
//  Created by Devin Sturgeon on 12/20/13.
//  Copyright (c) 2013 Devin Sturgeon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

#import "MasterTabBarController.h"

@interface VolumesViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISlider *noiseSlider;
@property (strong, nonatomic) IBOutlet UISwitch *noiseSwitch;
@property (strong, nonatomic) IBOutlet UISegmentedControl *noiseSegmentControl;

@end
