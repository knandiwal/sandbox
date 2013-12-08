/* use
* "clang -fobjc-arc -framework Foundation main.m -o prog1"
* to make executable
*/

#import <Foundation/Foundation.h>

//---- @interface section ----

    @interface Fraction: NSObject
        -(void) print;
        -(void) setNumerator: (int) n;
        -(void) setDenominator: (int) d;
        -(int) getNumerator;
        -(int) getDenominator;
    @end

//---- @implementation section ----

    @implementation Fraction {
        int numerator;
        int denominator;
    }
        -(void) print {
            NSLog (@"%i/%i", numerator, denominator);
        }

        -(void) setNumerator: (int) n {
            numerator = n;
        }
        -(void) setDenominator: (int) d {
            denominator = d;
        }

        -(int) getNumerator {
            return numerator;
        }
        -(int) getDenominator {
            return denominator;
        }

    @end

//---- program section ----

int main (int argc, char * argv[]) {
    @autoreleasepool {
       Fraction *myFraction = [[Fraction alloc] init];
       // Fraction *myFraction = [Fraction new];
       [myFraction setNumerator: 1];
       [myFraction setDenominator: 3];

       NSLog (@"The value of myFraction is: %i/%i",
            [myFraction getNumerator], [myFraction getDenominator]);
    }

return 0;
}
