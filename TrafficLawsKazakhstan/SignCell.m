//
//  SignCell.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 10.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SignCell.h"

@implementation SignCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.imageView.bounds = CGRectMake(0,0,80,80);
    self.imageView.frame = CGRectMake(0,0,80,80);
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imageView.contentMode = UIViewContentModeCenter;
    
    CGRect tmpFrame = self.textLabel.frame;
    tmpFrame.origin.x = 80;
    self.textLabel.frame = tmpFrame;
    
    tmpFrame = self.detailTextLabel.frame;
    tmpFrame.origin.x = 80;
    self.detailTextLabel.frame = tmpFrame;
    
}

@end
