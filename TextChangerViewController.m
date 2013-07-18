//
//  TextChangerViewController.m
//  Attributer
//
//  Created by Peter Lyons on 7/15/13.
//  Copyright (c) 2013 Peter Lyons. All rights reserved.
//

#import "TextChangerViewController.h"

@interface TextChangerViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textInput;
@property (strong, nonatomic) IBOutlet UILabel *textOutput;
@property (strong, nonatomic) IBOutlet UIButton *updateButton;
@end

@implementation TextChangerViewController


- (void)updateText:(NSAttributedString *)input
{
    [self.textOutput setAttributedText:input];
}
- (IBAction)updateDisplayText:(UIButton *)sender
{
    [self updateText:[[NSAttributedString alloc] initWithString:self.textInput.text]];
}

@end
