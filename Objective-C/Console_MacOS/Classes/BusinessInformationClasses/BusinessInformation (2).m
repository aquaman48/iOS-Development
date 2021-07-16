//
//  CompanyInfo.m
//  BusinessInformation
//
//  Created by user193450 on 7/11/21.
//

#import "CompanyInfo.h"


@implementation CompanyInfo
@synthesize placeName;
@synthesize zipCode;
@synthesize addressType;

-(id) initCompanyInfo:
            (NSString *)newPlaceName
            :(int)newZipCode
            :(NSString *)newAddressType
{
    if (self == [super init]) {
        [self setPlaceName:newPlaceName];
        [self setZipCode:newZipCode];
        [self setAddressType:newAddressType];
    }
    return  self;
}

-(NSString *) description
{
    NSString *companyDescription = [NSString stringWithFormat:
        @"\nPlace Name: %@"
        @"\nZip Code: %d"
        @"\nAddress Type: %@",
        placeName, zipCode, addressType];
    return companyDescription;
}

@end
