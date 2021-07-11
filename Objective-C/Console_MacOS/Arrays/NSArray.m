//
//  main.m
//  Birthdays
//
//  Created by user193450 on 7/8/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSInteger birthdayArrayLength;
        NSArray *fullBirthDate = [[NSArray alloc]initWithObjects:                                  @"27 September, 1988",
                                  @"14 October, 1995",
                                  @"23 July, 1991",
                                  @"17 October, 1996",
                                  @"25 December, 1991",
                                  nil];
        
        NSMutableArray *mutableFullBirthDate = [NSMutableArray arrayWithArray:fullBirthDate];
        birthdayArrayLength = [mutableFullBirthDate count];
        
        NSString *stringBirthDate;
        
        NSDateFormatter *birthDateFormat = [[NSDateFormatter alloc] init];
        [birthDateFormat setDateFormat:@"dd MM, yyyy"];
        NSDate *today = [NSDate date];
        
        //for sorting
        NSSortDescriptor *sortedBirthDates = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
        
        NSArray * sortedDateArray;
        

        
        
        
        sortedDateArray = [mutableFullBirthDate sortedArrayUsingDescriptors:@[sortedBirthDates]];
        

        
        NSLog(@"Array: %@", fullBirthDate);
        NSLog(@"Sorted %@", sortedDateArray);
        
        

        NSLog(@"\n\n\n\nBirthday\t\t\t\t\tAge");
        
        for (int i = 0; i < birthdayArrayLength; i++)
        {
            //stringBirthDate = [mutableFullBirthDate objectAtIndex:i];
            stringBirthDate = [sortedDateArray objectAtIndex:i];
            //stringBirthDate will be the string representation for each line to convert to a NSDate to find age.
            
            //NSLog(@"Mutable array with each entry as a string element %i value %@", i,stringBirthDate);
            
            int time = [today timeIntervalSinceDate:[birthDateFormat dateFromString:stringBirthDate]];
            int allDays = (((time/60)/60)/24);
            int days = allDays%365;
            int years = (allDays-days)/365;
            //Now at this point, we have calculated age and can show each age for birthday given. Now to sort.
            NSLog(@"\n%@\t\t\t\t%i", stringBirthDate, years);
            
            
            
            
        }
        
        //sorted

        
        //NSLog(@"Sorted array is %@", fullBirthDate);
        
    }
    return 0;
}
