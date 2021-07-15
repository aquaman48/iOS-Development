//
//  main.m
//  LoopsWithInput
//
//  Created by user193450 on 7/6/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        double sum = 0;
        double userNumber = 0;
        
        NSLog(@"Please enter a whole number: ");
        scanf("%lf", &userNumber);
        for (int i = 0; i < 5; i++)
        {
            sum += userNumber;
            userNumber++;
        }
        double average = sum / 5;
        NSLog(@"The average of your number plus the 5 following numbers is: %.2f", average);
    }
    return 0;
}
