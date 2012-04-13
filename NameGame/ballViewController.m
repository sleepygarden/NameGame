#import "ballViewController.h"
@implementation ballViewController
@synthesize inputField;
@synthesize displayLabel;
@synthesize guessMe;
@synthesize myGuess;

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [inputField resignFirstResponder];
    return YES;
}
- (IBAction)startType:(id)sender {
    inputField.text=nil;
}
-(void)viewDidLoad{
    inputField.delegate=self;
    guessMe = (arc4random() % 10)+1;
    displayLabel.text=@"???";
    inputField.text=@"Guess:";
    
}
- (IBAction)newPress:(id)sender {
    guessMe = (arc4random() % 10)+1;
    displayLabel.text=@"???";
    inputField.text=@"Guess:";

}
  
- (IBAction)checkPress:(id)sender {
    myGuess=[inputField.text intValue];
    if ([inputField.text length]==0)
    { displayLabel.text=@"Enter Something!";
    inputField.text=@"Guess:";}
    else if (myGuess>10 || [inputField.text intValue]<1)
        displayLabel.text=@"Please enter a number between 1 and 10";
    else if (myGuess==guessMe)
        displayLabel.text=[NSString stringWithFormat:@"Guess: %d Answer: %d, Success!",myGuess, guessMe];
    else 
        displayLabel.text=[NSString stringWithFormat:@"Guess: %d Answer: %d, Try Again",myGuess, guessMe];
}
@end
