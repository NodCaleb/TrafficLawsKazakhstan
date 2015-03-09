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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.sections count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SectionViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sectionCell" forIndexPath:indexPath];
    
    Section *cellSection = [self.sections objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%i. %@", cellSection.number, cellSection.header];
    cell.cellSection = cellSection;
    
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showSectionDetails"])
        if ([segue.destinationViewController isKindOfClass:[SectionDetailsVC class]])
        {
            SectionDetailsVC *targetVC = segue.destinationViewController;
            SectionViewCell *senderCell = (SectionViewCell *)sender;
            targetVC.currentSection = senderCell.cellSection;
        }
}


@end
