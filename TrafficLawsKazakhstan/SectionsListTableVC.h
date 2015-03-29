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

@interface SectionsListTableVC : UITableViewController <UISearchBarDelegate>

@property (strong, nonatomic) NSMutableArray *sections;
@property (strong, nonatomic) NSArray *foundSections;

@end
