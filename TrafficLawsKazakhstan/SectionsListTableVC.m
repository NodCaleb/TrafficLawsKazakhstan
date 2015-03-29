//
//  SectionsListTableVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SectionsListTableVC.h"
#import "SectionViewCell.h"
#import "SectionDetailsVC.h"

@interface SectionsListTableVC ()

@end

@implementation SectionsListTableVC

@synthesize sections = _sections;

- (NSMutableArray *)sections
{
    if (!_sections)
    {
        _sections = [[NSMutableArray alloc] init];
    }
    return _sections;
}

//@synthesize foundSections = _foundSections;
//
//- (NSArray *)foundSections
//{
//    if (!_foundSections)
//    {
//        _foundSections = [[NSArray alloc] init];
//    }
//    return _foundSections;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *sectionData = [LawData getEntireLaw];
    for (NSDictionary *sectionDictionary in sectionData)
    {
        [self.sections addObject:[[Section alloc] initWithNumber:[sectionDictionary[SECTION_NUMBER] integerValue] header:sectionDictionary[SECTION_HEADER] andBody:sectionDictionary[SECTION_BODY]]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0)
    {
        if ([self.foundSections count] == 0)
        {
            return [self.sections count];
        }
        else return 0;
    }
    else if (section == 1) return [self.foundSections count];
    else return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SectionViewCell *cell;
    
    if (indexPath.section == 0)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"sectionCell" forIndexPath:indexPath];
        Section *cellSection = [self.sections objectAtIndex:indexPath.row];
        
        cell.textLabel.text = [NSString stringWithFormat:@"%i. %@", cellSection.number, cellSection.header];
        cell.cellSection = cellSection;
    }
    else if (indexPath.section == 1)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"foundCell" forIndexPath:indexPath];
        Section *cellSection = [self.foundSections objectAtIndex:indexPath.row];
        
        cell.textLabel.text = [NSString stringWithFormat:@"%i. %@", cellSection.number, cellSection.header];
        cell.detailTextLabel.text = cellSection.foundText;
        cell.cellSection = cellSection;
    }
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark Search Bar Delegate

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if ([searchBar.text length] > 3)
    {
        self.foundSections = [LawData searchLawForSubstring:searchBar.text];
        [self.tableView reloadData];
    }
    else if ([self.foundSections count] > 0)
    {
        self.foundSections = nil;
        [self.tableView reloadData];
    }
    
    
    
    //    NSLog(@"String length: %i", [self.productSearchBar.text length]);
//    if ([self.productSearchBar.text length] > 0)
//    {
//        if ([self.products count] == 0)
//        {
//            for (NSDictionary *productData in [ProductsData testProducts])
//            {
//                NSString *imageName = [NSString stringWithFormat:@"%@.jpg", productData[PRODUCT_NUMBER]];
//                SKU *product = [[SKU alloc] initWithData:productData andImage:[UIImage imageNamed:imageName]];
//                [self.products addObject:product];
//                [self.menuTable reloadData];
//            }
//        }
//    }
//    else
//    {
//        [self.products removeAllObjects];
//        [self.menuTable reloadData];
//    }
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showSectionDetails"]||[segue.identifier isEqualToString:@"showFoundSectionDetails"])
        if ([segue.destinationViewController isKindOfClass:[SectionDetailsVC class]])
        {
            SectionDetailsVC *targetVC = segue.destinationViewController;
            SectionViewCell *senderCell = (SectionViewCell *)sender;
            targetVC.currentSection = senderCell.cellSection;
        }
}


@end
