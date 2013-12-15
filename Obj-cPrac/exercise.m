#import <Foundation/Foundation.h>

int main(int argc, char const *argv[]) {
    @autoreleasepool {
        int fahrenheit = 27;
        int celsius = 0;
        //convertion f - c
        celsius = (fahrenheit - 32) / 1.8;

        NSLog (@"%i degrees Fahrenheit is equivalent to %i degrees Celsius", fahrenheit, celsius);
    }


    return 0;
}
