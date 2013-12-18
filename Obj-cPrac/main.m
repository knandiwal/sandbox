/*
* use
* "clang -fobjc-arc -framework Foundation <.m files> -o prog1"
* to make executable
*/
#import "Fraction.h"
int main (int argc, char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        // set fraction to 1/3
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        // display the fraction
        NSLog (@"The value of myFraction is:");
        [myFraction print];
    }
return 0;
}
