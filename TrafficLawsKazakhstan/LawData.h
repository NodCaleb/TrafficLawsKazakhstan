//
//  LawData.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//
//  All the defines has been moved to Prefix Header
//

#import <Foundation/Foundation.h>
#import "Section.h"

@interface LawData : NSObject

+ (NSArray *) getEntireLaw; //Returns NSArray of NSDictionaries
+ (NSArray *) getURLsForSection:(int)sectionNumber;
+ (NSArray *) searchLawForSubstring:(NSString *)searchString; //Returns NSArray of Sections

@end
