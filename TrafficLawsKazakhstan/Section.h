//
//  Section.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Section : NSObject

@property (nonatomic) int number;
@property (strong, nonatomic) NSString *header;
@property (strong, nonatomic) NSString *body;

-(id) initWithNumber:(int)nimber header:(NSString *)header andBody:(NSString *)body;

@end
