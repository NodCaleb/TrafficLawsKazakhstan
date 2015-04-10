//
//  Sign.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 09.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "Sign.h"

@implementation Sign

-(id) initWithData:(NSDictionary *)signData
{
    self = [super init];
    
    self.number = signData[SIGN_NUMBER];
    self.title = signData[SIGN_TITLE];
    self.descriptionText = signData[SIGN_DESCRIPTION];
    self.image = [UIImage imageNamed:signData[SIGN_IMAGE_NAME]];
    if ([signData[SIGN_DESCRIPTION] isEqualToString:@""]) self.hasDescription = NO;
    else self.hasDescription = YES;
    
    return self;
}

@end
