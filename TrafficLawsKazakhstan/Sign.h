//
//  Sign.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 09.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sign : NSObject

@property (strong, nonatomic) NSString *number;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *descriptionText;
@property (strong, nonatomic) UIImage *image;
@property (nonatomic) BOOL hasDescription;

-(id) initWithData:(NSDictionary *)signData;

@end
