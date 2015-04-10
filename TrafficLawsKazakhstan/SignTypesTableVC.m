//
//  SignTypesTableVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SignTypesTableVC.h"
#import "SignsData.h"
#import "SignGroupCell.h"
#import "SignsCollectionVC.h"
#import "SignsTableVC.h"

@interface SignTypesTableVC ()

@end

@implementation SignTypesTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.signGroups = [SignsData getSignsTypes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.signGroups count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SignGroupCell *cell = [tableView dequeueReusableCellWithIdentifier:@"groupCell" forIndexPath:indexPath];
    
    NSDictionary *groupDictionary = [self.signGroups objectAtIndex:indexPath.row];
    
    UIImage *groupImage = [UIImage imageNamed:[groupDictionary objectForKey:TYPE_IMAGE_NAME]];
    
    cell.groupCode = [groupDictionary objectForKey:TYPE_CODE];
    cell.textLabel.text = [NSString stringWithFormat:@"%@. %@", [groupDictionary objectForKey:TYPE_NUMBER], [groupDictionary objectForKey:TYPE_NAME]];
    cell.imageView.image = groupImage;
    
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
    if ([segue.identifier isEqualToString:@"showSignGroup"] && [segue.destinationViewController isKindOfClass:[SignsCollectionVC class]])
    {
        SignGroupCell *senderCell = (SignGroupCell *)sender;
        SignsCollectionVC *targetVC = segue.destinationViewController;
        targetVC.groupCode = senderCell.groupCode;
    }
    else if ([segue.identifier isEqualToString:@"showSgnsInTable"] && [segue.destinationViewController isKindOfClass:[SignsTableVC class]])
    {
        SignGroupCell *senderCell = (SignGroupCell *)sender;
        SignsTableVC *targetVC = segue.destinationViewController;
        targetVC.groupCode = senderCell.groupCode;
    }
}


@end
