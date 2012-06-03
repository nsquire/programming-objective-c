//
//  main.m
//  Chapter5
//
//  Created by Nicholas Squire on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TriangularNumber : NSObject

+(int) calculate: (int) value;

@end

@implementation TriangularNumber

+(int) calculate: (int) value
{
    return value * ( (value + 1) / 2 );
}

@end


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        NSLog(@"#1");
        
        for (int index = 1; index <= 10; ++index)
        {
            //Looping
            NSLog(@"n: %i, n^2: %i", index, index * index);
        }
        
        NSLog(@"\n#2");
        
        for (int index = 0; index <= 50; index += 5)
        {
            NSLog(@"Index: %i, Triangular Number: %i", index, [TriangularNumber calculate:index]);
        }
        
        NSLog(@"\n#3");
        
        for (int index = 1, factorial = 1; index <= 10; ++index) {
            factorial = factorial * index;
            NSLog(@"Index: %i, Factorial: %i", index, factorial);
        }
        
        NSLog(@"\n#4");
        
        // Program to generate a table of triangular numbers
        int n, triangularNumber;
        NSLog (@"TABLE OF TRIANGULAR NUMBERS"); 
        NSLog (@" n Sum from 1 to n");
        NSLog (@"-- ---------------");
        
        triangularNumber = 0;
        for ( n = 1; n <= 10; ++n ) {
            triangularNumber += n;  
            //NSLog (@" %i        %i", n, triangularNumber);
            NSLog (@"%-2i %i", n, triangularNumber);
        }
        
         NSLog(@"\n#5");
        
        int inputNumber1;
        NSLog (@"How many Triangular numbers do you want to type in?"); 
        scanf ("%i", &inputNumber1);
        
        int n1, number1, triangularNumber1, counter1;
        for ( counter1 = 1; counter1 <= inputNumber1; ++counter1 ) 
        { 
            NSLog (@"What triangular number do you want?"); 
            scanf ("%i", &number1);
            triangularNumber1 = 0;
            for ( n1 = 1; n1 <= number1; ++n1 ) 
                triangularNumber1 += n1;
            
            NSLog (@"Triangular number %i is %i", number1, triangularNumber1); 
        }
        
        NSLog(@"\n#6");
        
        NSLog(@"\n...#5.2");
        
        int n2, triangularNumber2;
        triangularNumber2 = 0;
        
        n2 = 1;
        while (n2 <= 200) {
            triangularNumber2 += n2;
            n2 = n2 + 1;
        }
        
        //for ( n2 = 1; n2 <= 200; n2 = n2 + 1 ) 
        //    triangularNumber2 += n2;
        
        NSLog (@"The 200th triangular number is %i", triangularNumber2);
        
        NSLog(@"\n...#5.3");
        
        int n3, number3, triangularNumber3, counter3;
        
        counter3 = 1;
        while (counter3 <= 5) {
            NSLog (@"What triangular number do you want?"); 
            scanf ("%i", &number3);
            triangularNumber2 = 0;
            for ( n3 = 1; n3 <= number3; ++n3 ) 
                triangularNumber3 += n3;
            
            NSLog (@"Triangular number %i is %i", number3, triangularNumber3); 
            
            ++counter3;
        }
        
        /*for ( counter3 = 1; counter3 <= 5; ++counter3 ) 
        { 
            NSLog (@"What triangular number do you want?"); 
            scanf ("%i", &number3);
            triangularNumber2 = 0;
            for ( n3 = 1; n3 <= number3; ++n3 ) 
                triangularNumber3 += n3;
            
            NSLog (@"Triangular number %i is %i", number3, triangularNumber3); 
        }*/

        NSLog(@"\n...#5.4");
        
        int n4, number4, triangularNumber4;
        NSLog (@"What triangular number do you want?"); 
        scanf ("%i", &number4);
        triangularNumber4 = 0;
        
        n4 = 1;
        while (n4 <= number4) {
            triangularNumber4 += n4;
            ++n4;
        }
        
        //for ( n4 = 1; n4 <= number4; ++n4 ) 
        //    triangularNumber4 += n4;
        
        NSLog (@"Triangular number %i is %i\n", number4, triangularNumber4);
        
        NSLog(@"\n...#5.5");
        
        int n5, number5, triangularNumber5, counter5;
        
        counter5 = 1;
        while (counter5 <= 5) {
            NSLog (@"What triangular number do you want?"); 
            scanf ("%i", &number5);
            triangularNumber5 = 0;
            
            for ( n5 = 1; n5 <= number5; ++n5 ) 
                triangularNumber5 += n5;
            
            NSLog (@"Triangular number %i is %i", number5, triangularNumber5);
            
            ++counter5;
        }
        
        /*for ( counter5 = 1; counter5 <= 5; ++counter5 ) 
        { 
            NSLog (@"What triangular number do you want?"); 
            scanf ("%i", &number5);
            triangularNumber5 = 0;
            
            for ( n5 = 1; n5 <= number5; ++n5 ) 
                triangularNumber5 += n5;
            
            NSLog (@"Triangular number %i is %i", number5, triangularNumber5); 
        }*/
        
        NSLog(@"\n#7");
              
        int number, right_digit;
        NSLog (@"Enter your number."); 
        scanf ("%i", &number);
        while(number != 0) 
        { 
            right_digit = number % 10; 
            NSLog (@"%i", right_digit); 
            number /= 10;
        }
        
        NSLog(@"\n#8");
        
        int number8, right_digit8, sum8 = 0;
        NSLog(@"Enter the number to add the individual digits.");
        scanf("%i", &number8);
        
        while (number8 != 0) {
            right_digit8 = number8 % 10;
            sum8 += right_digit8;
            number8 /= 10;
        }
        
        NSLog(@"The sum of the digits is %i", sum8);
        
    }
    return 0;
}

