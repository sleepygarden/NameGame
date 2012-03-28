#import "ballViewController.h"
@implementation ballViewController
@synthesize inputField;
@synthesize displayLabel;
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    displayLabel.text=inputField.text;
    [inputField resignFirstResponder];
    if ([inputField.text length] == 0) displayLabel.text= @"Enter something!";
    else displayLabel.text= [NSString stringWithFormat: @"Hello %@", inputField.text];
    return YES;
}
- (IBAction)start:(id)sender {
    inputField.text=nil;
}
-(void)viewDidLoad{
    inputField.delegate=self;
}
@end
