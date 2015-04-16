//
//  MarkupDatailsVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 15.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "MarkupDatailsVC.h"

@interface MarkupDatailsVC ()

@end

@implementation MarkupDatailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.currentMarkup.markupNumber;
    
    //Определяем размеры основного вида и плашек сверху и снизу
    CGRect mainFrame = self.view.frame;
    CGFloat viewTop = self.navigationController.navigationBar.frame.size.height + self.navigationController.navigationBar.frame.origin.y;
    CGFloat padding = 8.0f;
    
    //Изображение разметки
    UIImage *markupImage = self.currentMarkup.markupImage;
    CGRect markupImageRect = CGRectMake((mainFrame.size.width - markupImage.size.width) / 2, mainFrame.origin.y + padding + viewTop, markupImage.size.width, markupImage.size.height);
    UIImageView *markupImageView = [[UIImageView alloc] initWithFrame:markupImageRect];
    markupImageView.image = markupImage;
    
    //Описание разметки
    CGRect textRect = CGRectMake(padding, markupImageRect.origin.y + markupImageRect.size.height + padding, mainFrame.size.width - padding * 2, mainFrame.size.height - padding * 3 - markupImageRect.size.height - viewTop);
    UITextView *markupInfoTextView = [[UITextView alloc] initWithFrame:textRect];
    markupInfoTextView.attributedText = [[NSAttributedString alloc] initWithString:self.currentMarkup.markupDescription attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:16]}];
    markupInfoTextView.editable = NO;
    
    [self.view addSubview:markupImageView];
    [self.view addSubview:markupInfoTextView];
    
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
