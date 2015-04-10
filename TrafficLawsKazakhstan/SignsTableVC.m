//
//  SignsTableVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 10.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SignsTableVC.h"
#import "SignCell.h"
#import "SignDescriptionVC.h"
#import "SignsData.h"
#import "SignGroupInfoVC.h"

@interface SignsTableVC ()

@property (strong, nonatomic) NSMutableArray *signs;
@property (strong, nonatomic) NSString *signGroupInfo;
@property (strong, nonatomic) NSString *signGroupName;

@end

@implementation SignsTableVC

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
    
    self.signGroupInfo = [SignsData getInfoForSignGroup:self.groupCode];
    self.signGroupName = [[SignsData getGroupByCode:self.groupCode] objectForKey:TYPE_NAME];
    
    self.navigationItem.title = self.signGroupName;
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
    if (section == 0) return [self.signs count];
    else if (section == 1 && self.signGroupInfo != nil) return 1;
    else return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section ==0)
    {
        SignCell *cell = [tableView dequeueReusableCellWithIdentifier:@"signCell" forIndexPath:indexPath];
        
        cell.cellSign = [self.signs objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = cell.cellSign.title;
        cell.detailTextLabel.numberOfLines = 0;
        cell.textLabel.text = cell.cellSign.number;
        
        CGSize newSize = CGSizeMake(75, 75);
        
        [cell.imageView setImage:[self resizeImage:cell.cellSign.image toSize:newSize]];
        
        if (cell.cellSign.hasDescription) cell.accessoryType = UITableViewCellAccessoryDetailButton;
        else cell.accessoryType = UITableViewCellAccessoryNone;
        
        return cell;
    }
    else
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"infoCell" forIndexPath:indexPath];
        
        cell.textLabel.text = self.signGroupName;
        cell.detailTextLabel.text = @"Справочная информация";
        //cell.textLabel.numberOfLines = 0;
        
        return cell;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) return 80;
    else return 44;
}

-(BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) return NO;
    else return YES;
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
    if ([segue.identifier isEqualToString:@"showSignDetails"] && [segue.destinationViewController isKindOfClass:[SignDescriptionVC class]])
    {
        SignCell *senderCell = (SignCell *)sender;
        SignDescriptionVC *targetVC = segue.destinationViewController;
        targetVC.currentSign = senderCell.cellSign;
    }
    if ([segue.identifier isEqualToString:@"showGroupInfo"] && [segue.destinationViewController isKindOfClass:[SignGroupInfoVC class]])
    {
        SignGroupInfoVC *targetVC = segue.destinationViewController;
        targetVC.signGroupInfo = self.signGroupInfo;
        targetVC.signGroupName = self.signGroupName;
    }
}

#pragma mark — Helper methods

-(UIImage*)resizeImage:(UIImage*)image toSize:(CGSize)newSize
{
    if (image.size.height < image.size.width)
    {
        newSize.height = (newSize.width / image.size.width) * image.size.height;
    }
    else
    {
        newSize.width = (newSize.height / image.size.height) * image.size.width;
    }
    
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}


@end
