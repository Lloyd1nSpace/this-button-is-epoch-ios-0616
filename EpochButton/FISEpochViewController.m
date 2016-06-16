//
//  FISEpochViewController.m
//  EpochButton
//
//  Created by Lloyd W. Sykes on 6/16/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISEpochViewController.h"

@interface FISEpochViewController ()

@property (weak, nonatomic) IBOutlet UILabel *epochLabel;

@end

@implementation FISEpochViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)epochButtonTapped:(id)sender {
    
    CGFloat date =  [self epochMethod];
    
    self.epochLabel.text = [NSString stringWithFormat:@"%f", date];
    // This converts the CGFloat into a String & sets it to self.epochLabel.Text once epochButton is tapped which is exactly what we want! Had to look up the %f format specifier for CGFloat.
    // I also initially forgot to check the box for "Is Initial View Controller" which meant that my storyboard didn't have an entry point which was causing the test to fail.
    
    
}

- (CGFloat)epochMethod {
    
    return [[NSDate date] timeIntervalSince1970];
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
