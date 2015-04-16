//
//  Markup.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 15.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Markup : NSObject

@property (strong, nonatomic) NSString *markupNumber;
@property (strong, nonatomic) NSString *markupType;
@property (strong, nonatomic) NSString *markupDescription;
@property (strong, nonatomic) UIImage *markupImage;

-(id) initWithData:(NSDictionary *)markupData;


@end
