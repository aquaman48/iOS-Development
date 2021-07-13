//
//  main.m
//  Guessing_Game
//
//  Created by user193450 on 7/9/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int number = arc4random_uniform(80);
        int userGuess = 0;
        int numberOfGuesses = 0;
        BOOL isCorrect = NO;
        NSLog(@"\n\t\t\t\tGuess any whole number 0 - 80: ");
        NSLog(@"\n\t\t\tPlease note you will only have 10 tries");
        NSLog(@"Random number 0 - 80: %i", number);
        do{
            numberOfGuesses++;
            
            NSLog(@"Guess %i out 10", numberOfGuesses);
            scanf("%d", &userGuess);
            if (userGuess == number)
            {
                isCorrect = true;
                NSLog(@"Congratulations! You got it in %i guesses", numberOfGuesses);
            }
            else if (userGuess < number){
                NSLog(@"Try again your guess is to low");
                
            }
            else if (userGuess > number){
                NSLog(@"Try again your guess is to high");
                
            }
            
            if (numberOfGuesses == 10)
            {
                isCorrect = true;
                NSLog(@"Better Luck next Time!");
            }
        }
        while (!isCorrect);
            
        
        
    }
    return 0;
}
