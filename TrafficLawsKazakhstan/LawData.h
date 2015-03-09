//
//  LawData.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SECTION_NUMBER @"Number of the section"
#define SECTION_HEADER @"Header of the section"
#define SECTION_BODY @"Body of the section"

@interface LawData : NSObject

+ (NSArray *) getEntireLaw;

@end
