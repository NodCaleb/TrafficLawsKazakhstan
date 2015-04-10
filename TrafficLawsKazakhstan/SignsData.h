//
//  SignsData.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 09.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SignsData : NSObject

+ (NSArray *) getSignsTypes;
+ (NSDictionary *) getGroupByCode:(NSString *)groupCode;
+ (NSArray *) getSignsWithType:(NSString *)signType;
+ (NSDictionary *) getSignWithNumber:(NSString *)signNumber;
+ (NSString *) getInfoForSignGroup:(NSString *)groupCode;

@end
