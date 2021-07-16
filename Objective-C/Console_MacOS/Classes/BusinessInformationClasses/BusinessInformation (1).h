//
//  CompanyInfo.h
//  BusinessInformation
//
//  Created by user193450 on 7/11/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CompanyInfo : NSObject
{
    NSString *placeName;
    int zipCode;
    NSString *addressType;
}

-(id) initCompanyInfo:
            (NSString *) newPlaceName
            : (int) newZipCode
            : (NSString *) newAddressType;

@property (getter = getPlaceName, setter = setPlaceName:) NSString *placeName;
@property (getter = getZipCode, setter = setZipCode:) int zipCode;
@property (getter = getAddressType, setter = setAddressType:) NSString *addressType;

-(NSString *) description;


@end

NS_ASSUME_NONNULL_END
