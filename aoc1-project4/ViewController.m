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
  // Sets UILabel for username
  username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 20.0f)];
  
  // Sets background color, text, and alignment for username UILabel
  if (username != nil) {
    username.backgroundColor = [UIColor whiteColor];
    username.text = @"Username: ";
    username.textAlignment = UITextAlignmentCenter;
  }
  // Adds Subview
  [self.view addSubview:username];
  
  // Text field for username, button style, and subview
  usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(120.0f, 10.0f, 180.0f, 25.0f)];
  if (usernameTextField != nil){
    usernameTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    [self.view addSubview:usernameTextField];
  }
  
  // Sets Login button, button tag, properties, action for click event, subview
  login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  login.tag = 0;
  
  if (login != nil){
    login.frame = CGRectMake(210.0f, 40.0f, 90.0f, 30.0f);
    login.tintColor = [UIColor lightGrayColor];
    [login setTitle:@"Login" forState:UIControlStateNormal];
    
    [login addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:login];
  }

  // UILabel for username prompt, with properties, subview
  enterName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 80.0f, 320.0f, 50.0f)];
  
  if (enterName != nil) {
    enterName.text = @"Please Enter Username";
    enterName.backgroundColor = [UIColor darkGrayColor];
    enterName.textAlignment = UITextAlignmentCenter;
    enterName.textColor = [UIColor whiteColor];
  }
  
  [self.view addSubview:enterName];
  
  // Sets NSDate
  theDate = [NSDate date];
    
  // Allocate and initialize NSFormatter
  dateFormat = [[NSDateFormatter alloc] init];
  
  // Use format style full and set date/time to NSString
  if (dateFormat != nil){
   [dateFormat setDateStyle:NSDateFormatterFullStyle];
   [dateFormat setTimeStyle:NSDateFormatterFullStyle];
    alertMessage = [dateFormat stringFromDate:theDate];
  }
  
  
  // Show Date button
  showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  // Set tag for show date button
  showDate.tag = 1;
  
  // Create frame, color, and title, and action for click 
  if (showDate != nil){
    showDate.frame = CGRectMake(10.0f, 140.0f, 90.0f, 30.0f);
    showDate.tintColor = [UIColor lightGrayColor];
    [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
    
    [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:showDate];
  }

  // Sets Info Button w/ Tag
  info = [UIButton buttonWithType:UIButtonTypeInfoLight];
  info.tag = 2;
  
  // Sets frame for info button and action for click event
  if (info != nil) {
    info.frame = CGRectMake(10.0f, 320.0f, 20.0f, 20.0f);
    [info addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:info];
  }
  
  // Allocate, Initialize UILabel info text and sets action for click
  infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 360.0f, 320.0f, 100.0f)];
  
  // Sets background color, alignment, text color for info UILabel
  if (infoLabel != nil) {
    infoLabel.backgroundColor = [UIColor darkGrayColor];
    infoLabel.textColor = [UIColor whiteColor];
    infoLabel.numberOfLines = 2;
  }
  
  [self.view addSubview:infoLabel];
    
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick:(UIButton*)loginButton
{
  // Condition for login button, sets text value to NSString 
  if (loginButton.tag == 0) {
  
    text = usernameTextField.text;
    
    // Sets text for label
    if (text.length != 0) {
      userLabelText = [[NSMutableString alloc] initWithString:@"User:  has been logged in"];
      [userLabelText insertString:text atIndex:6];
      
      enterName.text = userLabelText;
    } else {
      enterName.text = @"Username cannot be empty";
    }
  // Calls alert with date and time
  } else if (loginButton.tag == 1){
    date =[[UIAlertView alloc] initWithTitle:@"Date" message:(NSString *)alertMessage delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    
    if (date != nil){
      [date show];
    }
  // Shows text when info button is clicked
  } else if (loginButton.tag == 2){
     infoLabel.text = @"This application was created by: Jimmy Kim";
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
