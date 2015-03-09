//
//  SectionDetailsVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SectionDetailsVC.h"

@interface SectionDetailsVC ()

@end

@implementation SectionDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.currentSection.header;
    self.sectionDetailsTextView.text = self.currentSection.body;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
