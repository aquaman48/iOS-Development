//
//  main.m
//  Array_Fun + dictionaries
//
//  Created by user193450 on 7/6/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *employees = [NSArray arrayWithObjects:
                              @"Jones Marken",
                              @"Cynthia Kari",
                              @"Dexter Hanes",
                              @"Marcus Bright",
                              @"Jenna Chemple",
                              @"Alex Meyers",
                              nil];
        
        NSArray *rate = [NSArray arrayWithObjects:
                         [NSNumber numberWithDouble:27.89],
                         [NSNumber numberWithDouble:34.89],
                         [NSNumber numberWithDouble:25.78],
                         [NSNumber numberWithDouble:29.67],
                         [NSNumber numberWithDouble:26.80],
                         [NSNumber numberWithDouble:28.99],
                         nil];
        
        NSArray *hoursWorked = [NSArray arrayWithObjects:
                                @"36.00",
                                @"39.00",
                                @"40.00",
                                @"49.50",
                                @"38.50",
                                @"40.00",
                                nil];
        
        NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithObjects:rate forKeys:employees];
        
        NSArray *keys = [dictionary allKeys];
        id aKey;
        double pay;
        
        NSString *formatPay;
        for (int i = 0; i < [employees count]; i++)
        {
            aKey = [keys objectAtIndex: i];
            pay = [[rate objectAtIndex: i] doubleValue] *
                    [[hoursWorked objectAtIndex: i] doubleValue];
            formatPay = [NSString stringWithFormat:@"%.2f", pay];
            
            [dictionary setValue:formatPay forKey:[NSString stringWithFormat:@"%@", [employees objectAtIndex:i]]];
        
        }
        
        NSDate *today = [NSDate date];
        NSDateFormatter * formatDate = [[NSDateFormatter alloc] init];
        NSDateFormatter * formatTime = [[NSDateFormatter alloc] init];
        
        [formatDate setDateStyle:NSDateFormatterMediumStyle];
        [formatTime setTimeStyle:NSDateFormatterMediumStyle];
        
        NSString *date = [formatDate stringFromDate:today];
        NSString *time = [formatTime stringFromDate:today];
        
        NSLog(@"\nName\t\t\t\tPay\t\t\tDate, Time");
        for (id key in dictionary)
        {
            NSLog(@"\n%@\t\t$%@\t%@, %@", key, [dictionary objectForKey:key], date, time);
        }
        }
    
    return 0;
}

