//
//  SignDescriptionVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 16.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SignDescriptionVC.h"

@interface SignDescriptionVC ()

@end

@implementation SignDescriptionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.currentSign.number;
    
    CGFloat viewTop = self.navigationController.navigationBar.frame.size.height + self.navigationController.navigationBar.frame.origin.y;
    
    CGFloat signImageX = 8.0f;
    CGFloat signImageY = 8.0f + viewTop;
    CGRect imageRect = CGRectMake(signImageX,signImageY,self.currentSign.image.size.width,self.currentSign.image.size.height);
    UIImageView *signImageView = [[UIImageView alloc] initWithFrame:imageRect];
    [signImageView setImage:self.currentSign.image];
    
    
    CGFloat signNumberLabelX = signImageX + imageRect.size.width + 8.0f;
    CGFloat signNumberLabelY = signImageY;
    CGFloat signNumberLabelWidth = self.view.frame.size.width - signNumberLabelX - 8.0f;
    CGFloat signNumberLabelHeight = 21.0f;
    CGRect signNumberLabelRect = CGRectMake(signNumberLabelX, signNumberLabelY, signNumberLabelWidth, signNumberLabelHeight);
    UILabel *signNumberLabel = [[UILabel alloc] initWithFrame:signNumberLabelRect];
    signNumberLabel.text = self.currentSign.number;
    signNumberLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    
    CGFloat signNameLabelX = signImageX + imageRect.size.width + 8.0f;
    CGFloat signNameLabelY = signImageY + signNumberLabelHeight + 8.0f;
    CGFloat signNameLabelWidth = self.view.frame.size.width - signNameLabelX - 8.0f;
    CGFloat signNameLabelHeight = 42.0f;
    CGRect signNameLabelRect = CGRectMake(signNameLabelX, signNameLabelY, signNameLabelWidth, signNameLabelHeight);
    UILabel *signNameLabel = [[UILabel alloc] initWithFrame:signNameLabelRect];
    signNameLabel.text = self.currentSign.descriptionText;
    signNameLabel.lineBreakMode = NSLineBreakByWordWrapping;
    signNumberLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    
    [self.view addSubview:signImageView];
    [self.view addSubview:signNumberLabel];
    [self.view addSubview:signNameLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
