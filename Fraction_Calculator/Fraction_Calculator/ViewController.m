//
//  ViewController.m
//  Fraction_Calculator
//
//  Created by Squire, Nicholas on 9/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@implementation ViewController
{
    char                op;
    int                 currentNumber;
    BOOL                firstOperand, isNumerator, isNegative;
    Calculator          *myCalculator;
    NSMutableString     *displayString;
    int                 opsCount;
}

@synthesize display;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Do any additional setup after loading the view, typically from a nib.
    
    // Override point for customization after application launch
    
    firstOperand = YES;
    isNumerator = YES;
    isNegative = NO;
    displayString = [NSMutableString stringWithCapacity: 40];
    myCalculator = [[Calculator alloc] init];
    opsCount = 0;
}

- (void) processDigit: (int) digit
{
    currentNumber = currentNumber * 10 + digit;
    [displayString appendString: [NSString stringWithFormat: @"%i", digit]];
    NSLog(@"display string: %@", displayString);
    display.text = displayString;
}

- (IBAction) clickDigit: (UIButton *) sender
{
    int digit = sender.tag;
    
    if (isNumerator == NO && digit == 0) {
        [myCalculator clear];
        display.text = @"ERROR";
        return;
    }
    
    if (isNegative) {
        digit *= -1;
        isNegative = NO;
    }
    
    NSLog(@"digit: %i", digit);
    
    [self processDigit: digit];
}

- (void) processOp: (char) theOp
{
    [self storeFracPart];
    if (opsCount > 1) {
        NSLog(@"performing operation");
        [myCalculator performOperation: theOp];
    }
    NSString *opStr;
    op = theOp;
    
    switch (theOp) {
        case '+':
            opStr = @" + ";
            break;
        case '-':
            opStr = @" - ";
            break;
        case '*':
            opStr = @" ∞ ";
            break;
        case '/':
            opStr = @" / ";
            break;
    }
    
    
    firstOperand = NO;
    isNumerator = YES;
    
    [displayString appendString: opStr];
    display.text = displayString;
}

- (void) storeFracPart
{
    NSLog(@"Current number: %i", currentNumber);
    
    if (firstOperand) {
        if (isNumerator) {
            myCalculator.accumulator.numerator = currentNumber;
            myCalculator.accumulator.denominator = 1; // e.g. 3 * 4/5 =
        } else {
            myCalculator.accumulator.denominator = currentNumber;
        }
    } else if (isNumerator) {
        myCalculator.operand1.numerator = currentNumber;
        myCalculator.operand1.denominator = 1; // e.g. 3/2 * 4 =
    } else {
        myCalculator.operand1.denominator = currentNumber;
        //firstOperand = YES;
    }
    
    currentNumber = 0;
}

- (IBAction) clickOver
{
    [self storeFracPart];
    isNumerator = NO;
    [displayString appendString: @"/"];
    display.text = displayString;
}

// Arithmetic Operation keys

- (IBAction) clickPlus
{
    ++opsCount;
    [self processOp: '+'];
}

- (IBAction) clickMinus
{
    
    if ((firstOperand && isNumerator) || (firstOperand == NO && isNumerator)) {
        isNegative = YES;
    } else {
        ++opsCount;
        [self processOp: '-'];
    }
}

- (IBAction) clickMultiply
{
    ++opsCount;
    [self processOp: '*'];
}

- (IBAction) clickDivide
{
    ++opsCount;
    [self processOp: '/'];
}

// Misc. keys

- (IBAction) clickEquals
{
    if (firstOperand == NO) {
        [self storeFracPart];
        [myCalculator performOperation: op];
        
        [displayString appendString: @" = "];
        [displayString appendString: [myCalculator.accumulator convertToString]];
        display.text = displayString;
        
        currentNumber = 0;
        isNumerator = YES;
        firstOperand = YES;
        [displayString setString: @""];
        //opsCount = 0;
    }
}

- (IBAction) clickClear
{
    isNumerator = YES;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    
    [displayString setString: @""];
    display.text = displayString;
    opsCount = 0;
}

- (IBAction) clickConvert
{
    [myCalculator.accumulator print];
    double myInt = [myCalculator.accumulator convertToNum];
    NSLog(@"Converted fraction: %f", myInt);
    display.text = [NSString stringWithFormat: @"%f", myInt];
}

// iOS events

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
