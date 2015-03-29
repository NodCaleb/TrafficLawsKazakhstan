//
//  Section.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "Section.h"

@implementation Section

-(id) initWithNumber:(int)number header:(NSString *)header andBody:(NSString *)body
{
    self = [super init];
    
    self.number = number;
    self.header = header;
    self.body = body;
    
    
    return self;
}

-(id) initWithData:(NSDictionary *)sectionData
{
    self = [super init];
    
    self.number = [sectionData[SECTION_NUMBER] integerValue];
    self.header = sectionData[SECTION_HEADER];
    self.body = sectionData[SECTION_BODY];    
    
    return self;
}

@end
