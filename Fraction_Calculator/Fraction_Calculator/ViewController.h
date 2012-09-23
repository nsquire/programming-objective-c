//
//  ViewController.h
//  Fraction_Calculator
//
//  Created by Squire, Nicholas on 9/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

- (void) processDigit: (int) digit;
- (void) processOp: (char) theOp;
- (void) storeFracPart;

// Numeric Keys

- (IBAction) clickDigit: (UIButton *) sender;

// Arithmetic Operation keys

- (IBAction) clickPlus;
- (IBAction) clickMinus;
- (IBAction) clickMultiply;
- (IBAction) clickDivide;

// Misc. Keys

- (IBAction) clickOver;
- (IBAction) clickEquals;
- (IBAction) clickClear;
- (IBAction) clickConvert;

@end
