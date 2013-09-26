//
//  VolumesViewController.m
//  Anxiety Mixer
//
//  Created by Devin Sturgeon on 9/24/13.
//  Copyright (c) 2013 Devin Sturgeon. All rights reserved.
//

#import "VolumesViewController.h"

@interface VolumesViewController ()

@end

@implementation VolumesViewController
- (IBAction)noiseSwitchValueChange:(id)sender
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if ([_noiseSwitch isOn])
    {
        [appDelegate.selectedNoisePlayer play];
    }
    else
    {
        [appDelegate.selectedNoisePlayer stop];
    }
}

- (IBAction)noiseSliderValueChange:(id)sender
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.whiteNoisePlayer.volume =[_noiseSlider value];
    appDelegate.pinkNoisePlayer.volume =[_noiseSlider value];
    appDelegate.brownNoisePlayer.volume =[_noiseSlider value];
    
}
- (IBAction)noiseSegmentControllerValueChange:(id)sender
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    //stop all noises
    [appDelegate.whiteNoisePlayer stop];
    [appDelegate.pinkNoisePlayer stop];
    [appDelegate.brownNoisePlayer stop];
    
    
    switch ([_noiseSegmentController selectedSegmentIndex])
    {
        case 0:
            appDelegate.selectedNoisePlayer = appDelegate.whiteNoisePlayer;
            break;
        
        case 1:
            appDelegate.selectedNoisePlayer = appDelegate.pinkNoisePlayer;
            break;
        
        case 2:
            appDelegate.selectedNoisePlayer = appDelegate.brownNoisePlayer;
            break;
            
        default:
            break;
    }
    
    //is switch on?
    if ([_noiseSwitch isOn])
    {
        [appDelegate.selectedNoisePlayer play];
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        //Initialization stuffs
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    
    //set default noise based on segment controller
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    switch ([_noiseSegmentController selectedSegmentIndex])
    {
        case 0:
            appDelegate.selectedNoisePlayer = appDelegate.whiteNoisePlayer;
            break;
            
        case 1:
            appDelegate.selectedNoisePlayer = appDelegate.pinkNoisePlayer;
            break;
            
        case 2:
            appDelegate.selectedNoisePlayer = appDelegate.brownNoisePlayer;
            break;
            
        default:
            break;
    }
    
    if ([_noiseSwitch isOn])
    {
        [appDelegate.selectedNoisePlayer play];
    }
    
    
    //set volume based on slider
    appDelegate.selectedNoisePlayer.volume = _noiseSlider.value;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
