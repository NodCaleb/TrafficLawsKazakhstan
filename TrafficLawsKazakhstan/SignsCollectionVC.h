//
//  SignsCollectionVC.h
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 09.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SignsData.h"
#import "Sign.h"

@interface SignsCollectionVC : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *signs;
@property (strong, nonatomic) NSString *groupCode;

@end
