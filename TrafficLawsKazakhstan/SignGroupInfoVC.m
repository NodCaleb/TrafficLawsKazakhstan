//
//  SignGroupInfoVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 10.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SignGroupInfoVC.h"

@interface SignGroupInfoVC ()

@end

@implementation SignGroupInfoVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = self.signGroupName;
    
    //Определяем размеры основного вида и плашек навигации вверху и внизу
    CGRect mainFrame = self.view.frame;
    //CGFloat viewTop = self.navigationController.navigationBar.frame.size.height + self.navigationController.navigationBar.frame.origin.y;
    //CGFloat viewBottom = self.navigationController.navigationBar.frame.size.height;
    
    //Текст втыкаем на всю площадь основного вида
    CGRect textRect = CGRectMake(mainFrame.origin.x + 8.0f,mainFrame.origin.y + 8.0f, mainFrame.size.width - 16.0f, mainFrame.size.height - 16.0f);
    UITextView *signGroupInfoTextView = [[UITextView alloc] initWithFrame:textRect];
    signGroupInfoTextView.attributedText = [[NSAttributedString alloc] initWithString:self.signGroupInfo attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:16]}];
    signGroupInfoTextView.editable = NO;
    
    [self.view addSubview:signGroupInfoTextView];
}

- (void)didReceiveMemoryWarning
{
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
