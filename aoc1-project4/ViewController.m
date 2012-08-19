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

  usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(120.0f, 10.0f, 180.0f, 25.0f)];
  if (usernameTextField != nil){
    usernameTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    [self.view addSubview:usernameTextField];
  }
  
  login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  if (login != nil){
    login.frame = CGRectMake(210.0f, 40.0f, 90.0f, 30.0f);
    login.tintColor = [UIColor lightGrayColor];
    [login setTitle:@"Login" forState:UIControlStateNormal];
    [login setTitle:@"Login" forState:UIControlStateHighlighted];
    
    [login addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:login];
  }

  enterName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 80.0f, 320.0f, 50.0f)];
  
  if (enterName != nil) {
    enterName.text = @"Please Enter Username";
    enterName.backgroundColor = [UIColor darkGrayColor];
    enterName.textAlignment = UITextAlignmentCenter;
    enterName.textColor = [UIColor whiteColor];
  }
  
  [self.view addSubview:enterName];


  
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick:(UIButton*)login
{
  text = usernameTextField.text;
  
  if (text.length != 0) {
  
    userLabelText = [[NSMutableString alloc] initWithString:@"User:  has been logged in"];
    [userLabelText insertString:text atIndex:6];
    
    enterName.text = userLabelText;
  } else {
    enterName.text = @"Username cannot be empty";
  }
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
