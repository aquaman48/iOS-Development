//
//  main.m
//  UserInputChar
//
//  Created by user193450 on 6/28/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        char gender;
        NSLog(@"Hello and Welcome! \nPlease enter your gender m or f:");
        scanf("%c", &gender);
        if (gender == 'm' || gender == 'M')
        {
            NSLog(@"You are a boy");
        }
        if (gender == 'f' || gender == 'F') {
            NSLog(@"You are a girl");
        }
    }
    return 0;
}
