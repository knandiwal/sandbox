#import <Foundation/Foundation.h>

int main(int argc, char const *argv[]) {
    @autoreleasepool {
        // Declare two integers that will be tested to see
        // if the first integer is evenly divisible by the second
        int number1, number2;
        bool evenlyDivisible;

        // Save the user inout into the variables
        NSLog (@"Pleas input 2 numbers");
        scanf ("%i", &number1);
        scanf ("%i", &number2);

        // Test to see whether number1 is evenly divisible by number2
        (number1 % number2) == 0 ? (evenlyDivisible = true) : (evenlyDivisible = false);

        // Display the appropriate message
        if(evenlyDivisible == true) {
            NSLog (@"The first number is evenly divisible by the second");
        } else{
            NSLog (@"The first number isn't evenly divisible by the second");
        }
    }
return 0;
}
