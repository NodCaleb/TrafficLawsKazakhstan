//
//  SectionDetailsVC.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Section.h"

@interface SectionDetailsVC : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *sectionDetailsTextView;
@property (strong, nonatomic) Section *currentSection;

@end
