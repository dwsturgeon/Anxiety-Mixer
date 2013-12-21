//
//  VolumesViewController.m
//  Anxiety Mixer
//
//  Created by Devin Sturgeon on 12/20/13.
//  Copyright (c) 2013 Devin Sturgeon. All rights reserved.
//

#import "VolumesViewController.h"

@interface VolumesViewController ()

@end

@implementation VolumesViewController

- (IBAction)noiseSliderValueChanged:(UISlider *)sender
{
    MasterTabBarController *mtbc = (MasterTabBarController*)self.tabBarController;
    [[mtbc noisePlayer] setVolume:[_noiseSlider value]];
}

- (IBAction)noiseSwitchValueChanged:(UISwitch *)sender
{
    MasterTabBarController *mtbc = (MasterTabBarController*)self.tabBarController;
    
    if ([sender isOn])
    {
        [[mtbc noisePlayer] play];
    }
    else
    {
        [[mtbc noisePlayer] stop];
    }
}

/**********************************************************************************************************
 * Change the MasterTabBarControllers noisePlayer based upon what is selected from SegmentControl
 * Play the noise if switch is engaged
 **********************************************************************************************************/
- (IBAction)noiseSegmentControlValueChanged:(UISegmentedControl *)sender
{
    MasterTabBarController *mtbc = (MasterTabBarController*)self.tabBarController;
    
    switch ([_noiseSegmentControl selectedSegmentIndex])
    {
        case 0:
        {
            NSURL *whiteNoiseURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/WhiteNoiseVBR.mp3", [[NSBundle mainBundle] resourcePath]]];
            AVAudioPlayer *whiteNoisePlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:whiteNoiseURL error:nil];
            [whiteNoisePlayer setVolume:[_noiseSlider value]];
            [whiteNoisePlayer setNumberOfLoops:-1];
            [mtbc setNoisePlayer:whiteNoisePlayer];
            
            //clear variables
            whiteNoiseURL = nil;
            whiteNoisePlayer = nil;

        }
            break;
        
        case 1:
        {
            NSURL *pinkNoiseURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/PinkNoiseVBR.mp3", [[NSBundle mainBundle] resourcePath]]];
            AVAudioPlayer *pinkNoisePlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:pinkNoiseURL error:nil];
            [pinkNoisePlayer setVolume:[_noiseSlider value]];
            [pinkNoisePlayer setNumberOfLoops:-1];
            [mtbc setNoisePlayer:pinkNoisePlayer];
            
            //clear variables
            pinkNoiseURL = nil;
            pinkNoisePlayer = nil;
        }
            break;
        
        case 2:
        {
            NSURL *brownNoiseURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/BrownNoiseVBR.mp3", [[NSBundle mainBundle] resourcePath]]];
            AVAudioPlayer *brownNoisePlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:brownNoiseURL error:nil];
            [brownNoisePlayer setVolume:[_noiseSlider value]];
            [brownNoisePlayer setNumberOfLoops:-1];
            [mtbc setNoisePlayer:brownNoisePlayer];
            
            //clear variables
            brownNoiseURL = nil;
            brownNoisePlayer = nil;

        }
            break;
            
        default:
        {
            
        }
            break;
    }
    //End Switch
    
    if ([_noiseSwitch isOn])
    {
        [[mtbc noisePlayer] play];
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //initalize
    MasterTabBarController *mtbc = (MasterTabBarController*)self.tabBarController;
    NSURL *whiteNoiseURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/WhiteNoiseVBR.mp3", [[NSBundle mainBundle] resourcePath]]];
    
    AVAudioPlayer *whiteNoisePlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:whiteNoiseURL error:nil];
    
    [whiteNoisePlayer setNumberOfLoops:-1];
    [whiteNoisePlayer setVolume:[_noiseSlider value]];
    [mtbc setNoisePlayer:whiteNoisePlayer];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
