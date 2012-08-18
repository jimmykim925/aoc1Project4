//
//  ViewController.m
//  aoc1-project4
//
//  Created by Jimmy Kim on 8/17/12.
//  Copyright (c) 2012 Jimmy Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

  username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 20.0f)];
  if (username != nil) {
    username.backgroundColor = [UIColor whiteColor];
    username.text = @"Username: ";
    username.textAlignment = UITextAlignmentCenter;
  }

  [self.view addSubview:username];











    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
  } else {
      return YES;
  }
}

@end
