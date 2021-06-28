//
//  main.m
//  ErrorFix
//
//  Created by user193450 on 6/27/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int GMT_time = 10, CST_time = 10;
        
        int* state1 = &CST_time;

        CST_time += 5;
        
        NSLog(@"\nWhen the GMT time is %d o'clock,\nthen it is %d o'clock in Minnesota", GMT_time, *state1);

    }
    return 0;
}
