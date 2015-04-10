//
//  MarkupData.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MarkupData : NSObject

+ (NSArray *) getMarkupWithType:(NSString *)markupType;
+ (NSDictionary *) getMarkupWithNumber:(NSString *)markupNumber;

@end
