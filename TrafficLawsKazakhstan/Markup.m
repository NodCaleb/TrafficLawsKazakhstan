//
//  Markup.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 15.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "Markup.h"

@implementation Markup

-(id) initWithData:(NSDictionary *)markupData
{
    self = [super init];
    
    self.markupNumber = markupData[MARKUP_NUMBER];
    self.markupType = markupData[MARKUP_TYPE];
    self.markupDescription = markupData[MARKUP_DESCRIPTION];
    self.markupImage = [UIImage imageNamed:markupData[MARKUP_IMAGE_NAME]];
    
    return self;
}

@end
