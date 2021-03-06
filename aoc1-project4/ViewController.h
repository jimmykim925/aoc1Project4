//
//  ViewController.h
//  aoc1-project4
//
//  Created by Jimmy Kim on 8/17/12.
//  Copyright (c) 2012 Jimmy Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
  // Sets pointers to UILabels, NSString, UILabel, etc.
  UILabel *username;
  UITextField *usernameTextField;
  NSString *text;
  UIButton *login;
  UILabel *enterName;
  NSMutableString *userLabelText;
  NSDate *theDate;
  NSDateFormatter *dateFormat;
  UIButton *showDate;
  UIAlertView *date;
  NSString *alertMessage;
  UIButton *info;
  UILabel *infoLabel;
}
@end
