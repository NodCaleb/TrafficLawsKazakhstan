//
//  SectionsListTableVC.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LawData.h"
#import "Section.h"

@interface SectionsListTableVC : UITableViewController

@property (strong, nonatomic) NSMutableArray *sections;

@end
