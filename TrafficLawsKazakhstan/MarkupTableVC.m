//
//  MarkupTableVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 15.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "MarkupTableVC.h"
#import "Markup.h"
#import "MarkupData.h"
#import "MarkupCell.h"
#import "MarkupDatailsVC.h"

@interface MarkupTableVC ()

@property (strong, nonatomic) NSMutableArray *horisontalMarkup;
@property (strong, nonatomic) NSMutableArray *verticalMarkup;

@end

@implementation MarkupTableVC

@synthesize horisontalMarkup = _horisontalMarkup;

- (NSMutableArray *)horisontalMarkup
{
    if (!_horisontalMarkup)
    {
        _horisontalMarkup = [[NSMutableArray alloc] init];
    }
    return _horisontalMarkup;
}

@synthesize verticalMarkup = _verticalMarkup;

- (NSMutableArray *)verticalMarkup
{
    if (!_verticalMarkup)
    {
        _verticalMarkup = [[NSMutableArray alloc] init];
    }
    return _verticalMarkup;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Дорожная разметка";
    
    for (NSDictionary *markupDictionary in [MarkupData getMarkupWithType:HORISONTAL_MARKUP])
    {
        [self.horisontalMarkup addObject:[[Markup alloc] initWithData:markupDictionary]];
    }
    for (NSDictionary *markupDictionary in [MarkupData getMarkupWithType:VERTICAL_MARKUP])
    {
        [self.verticalMarkup addObject:[[Markup alloc] initWithData:markupDictionary]];
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
    if (section == 0) return [self.horisontalMarkup count];
    else if (section == 1) return [self.verticalMarkup count];
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MarkupCell *cell = [tableView dequeueReusableCellWithIdentifier:@"markupCell" forIndexPath:indexPath];

    if (indexPath.section == 0) cell.cellMarkup = [self.horisontalMarkup objectAtIndex:indexPath.row];
    else cell.cellMarkup = [self.verticalMarkup objectAtIndex:indexPath.row];
    
    cell.imageView.image = cell.cellMarkup.markupImage;
    cell.textLabel.text = cell.cellMarkup.markupNumber;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) return 88;
    else return 88;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 18)];
    /* Create custom view to display section header... */
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, 2, tableView.frame.size.width, 18)];
    [label setFont:[UIFont boldSystemFontOfSize:12]];
    NSString *string;
    if (section == 0) string = @"Горизонтальная разметка";
    else string = @"Вертикальная разметка";
    /* Section header is in 0th index... */
    [label setText:string];
    [view addSubview:label];
    [view setBackgroundColor:[UIColor colorWithRed:166/255.0 green:177/255.0 blue:186/255.0 alpha:1.0]]; //your background color...
    return view;
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
    if ([segue.identifier isEqualToString:@"showMarkupDetails"] && [segue.destinationViewController isKindOfClass:[MarkupDatailsVC class]])
    {
        MarkupCell *senderCell = (MarkupCell *)sender;
        MarkupDatailsVC *targetVC = segue.destinationViewController;
        targetVC.currentMarkup = senderCell.cellMarkup;
    }
        
}


@end
