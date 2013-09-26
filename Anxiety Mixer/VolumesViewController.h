//
//  VolumesViewController.h
//  Anxiety Mixer
//
//  Created by Devin Sturgeon on 9/24/13.
//  Copyright (c) 2013 Devin Sturgeon. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

@interface VolumesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *noiseSegmentController;
@property (weak, nonatomic) IBOutlet UISlider *noiseSlider;
@property (weak, nonatomic) IBOutlet UISwitch *noiseSwitch;

@end
