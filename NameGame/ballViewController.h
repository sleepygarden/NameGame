//
//  ballViewController.h
//  NameGame
//
//  Created by Michael Cornell on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ballViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
@property NSInteger guessMe;
@property NSInteger myGuess;

@end
