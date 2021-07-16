//
//  main.m
//  BusinessInformation
//
//  Created by user193450 on 7/11/21.
//

#import <Foundation/Foundation.h>
#import "CompanyInfo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        CompanyInfo *business = [[CompanyInfo alloc] initCompanyInfo:
            @"Atria":98765 :@"Commercial"];
        
        NSLog(@"%@", business);

    }
    return 0;
}
