//
//  SectionDetailsVC.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SectionDetailsVC.h"
#import "LawData.h"
#import "SignsData.h"
#import "Sign.h"
#import "SignDescriptionVC.h"

@interface SectionDetailsVC ()

@end

@implementation SectionDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.currentSection.header;
    self.sectionDetailsTextView.delegate = self;
    NSMutableAttributedString *sectionText = [[NSMutableAttributedString alloc] initWithString:self.currentSection.body];
//    [sectionText addAttributes:@{NSForegroundColorAttributeName: [UIColor blueColor]} range:NSMakeRange(6, 9)];
//    [sectionText addAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:14]} range:NSMakeRange(6, 9)];
//    [sectionText addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(20, 10)];
    for (NSDictionary *currentURL in [LawData getURLsForSection:self.currentSection.number])
    {
        [sectionText addAttribute:NSLinkAttributeName value:currentURL[URL_VALUE] range:NSMakeRange([currentURL[URL_RANGE_START] integerValue], [currentURL[URL_RANGE_LENGTH] integerValue])];
    }
    
    NSRange scrollRange = NSMakeRange(0, 0);
    
    if (self.currentSection.hihglightedText.location != 0)
    {
        [sectionText addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:self.currentSection.hihglightedText];
        scrollRange = [self getScrollRangeForStirng:(NSString *)sectionText withHighlightRange:self.currentSection.hihglightedText];
    }
    
    self.sectionDetailsTextView.attributedText = sectionText;
    [self.sectionDetailsTextView scrollRangeToVisible:scrollRange];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL*)URL inRange:(NSRange)characterRange
{
    NSString *urlString = [NSString stringWithFormat:@"%@", URL];
    NSString *destinationType = [urlString substringWithRange:NSMakeRange(0, 4)];
    NSString *destinationValue = [urlString substringWithRange:NSMakeRange(5, urlString.length - 5)];
    
    if ([destinationType isEqualToString:@"SIGN"])
    {
        [self performSegueWithIdentifier:@"showSignFromSection" sender:destinationValue];
    }
    
//    NSLog(@"Method called for URL type: %@ and value:%@", destinationType, destinationValue);
    //present webview here
    return NO;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showSignFromSection"])
        if ([segue.destinationViewController isKindOfClass:[SignDescriptionVC class]])
        {
            NSString *senderString = (NSString *)sender;
            senderString = @"1.5"; //Для тестирования, пока не готов полный справочник знаков
            SignDescriptionVC *targetVC = segue.destinationViewController;
            NSDictionary *currentSignData = [SignsData getSignWithNumber:senderString];
            Sign *currentSign = [[Sign alloc] initWithData:currentSignData];
            targetVC.currentSign = currentSign;
        }
}

#pragma mark — Helper methods

- (NSRange)getScrollRangeForStirng:(NSString *)string withHighlightRange:(NSRange)range
{
    int scrollPosition = range.location + 300;
    
    if (scrollPosition >= [string length]) scrollPosition = [string length] - 1;
    
    return NSMakeRange(scrollPosition, 1);
}


@end
