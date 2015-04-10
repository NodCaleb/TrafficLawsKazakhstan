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
    
    //Определяем размеры основного вида и плашек сверху и снизу
    CGRect mainFrame = self.view.frame;
    CGFloat viewTop = self.navigationController.navigationBar.frame.size.height + self.navigationController.navigationBar.frame.origin.y;
    CGFloat padding = 8.0f;
    
    //Наименоание знака
    CGRect textRect = CGRectMake(mainFrame.origin.x + padding, mainFrame.origin.y + padding, mainFrame.size.width - padding * 2, mainFrame.size.height - padding * 2);
    UITextView *signTitleTextView = [[UITextView alloc] initWithFrame:textRect];
    NSMutableAttributedString *signTitleString = [[[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@\n%@", self.currentSign.number, self.currentSign.title] attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:16]}] mutableCopy];
    [signTitleString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:18] range:NSMakeRange(0, self.currentSign.number.length)];
    signTitleTextView.attributedText = signTitleString;
    signTitleTextView.editable = NO;
    
    //Изображение знака
    UIImage *signImage = self.currentSign.image;
    CGRect signImageRect = CGRectMake(textRect.origin.x + textRect.size.width - signImage.size.width - padding, textRect.origin.y, signImage.size.width, signImage.size.height);
    UIImageView *signImageView = [[UIImageView alloc] initWithFrame:signImageRect];
    signImageView.image = signImage;
    
    //Область обтекания
    signTitleTextView.textContainer.exclusionPaths = @[[UIBezierPath bezierPathWithRect:signImageRect]];
    
    [self.view addSubview:signTitleTextView];
    [signTitleTextView addSubview:signImageView];
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
