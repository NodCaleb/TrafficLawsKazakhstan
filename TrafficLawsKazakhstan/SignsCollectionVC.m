//
//  SignsCollectionVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 09.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SignsCollectionVC.h"
#import "SignViewCell.h"
#import "SignDescriptionVC.h"

@interface SignsCollectionVC ()

@end

@implementation SignsCollectionVC

@synthesize signs = _signs;

- (NSMutableArray *)signs
{
    if (!_signs)
    {
        _signs = [[NSMutableArray alloc] init];
    }
    return _signs;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSDictionary *signDictionary in [SignsData getSignsWithType:self.groupCode])
    {
        [self.signs addObject:[[Sign alloc] initWithData:signDictionary]];
    }
    
    self.navigationItem.title = [[SignsData getGroupByCode:self.groupCode] objectForKey:TYPE_NAME];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark — CollectionViewDataSource

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    //reuse identifier from storyboard
    static NSString *CellIdentifier = @"signCell";
    
    //Set this to our collectionViewCell subclass
    SignViewCell *cell = (SignViewCell *)[cv dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Sign *cellSign = [self.signs objectAtIndex:indexPath.row];
    
    cell.cellSign = cellSign;
    
    CGRect imageRect = CGRectMake(0,0,100,100);
    UIImageView *cellImageView = [[UIImageView alloc] initWithFrame:imageRect];
    cellImageView.contentMode = UIViewContentModeCenter;
    cellImageView.contentMode = UIViewContentModeScaleAspectFit;
    [cellImageView setImage:cellSign.image];
    
    [[cell subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    [cell addSubview:cellImageView];
    
    cell.backgroundColor = [UIColor whiteColor];
    
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.signs count];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showSignDescription"])
    {
        if ([segue.destinationViewController isKindOfClass:[SignDescriptionVC class]])
        {
            SignDescriptionVC *targetVC = segue.destinationViewController;
            SignViewCell *senderCell = (SignViewCell *)sender;
            targetVC.currentSign = senderCell.cellSign;
        }
    }
}


@end
