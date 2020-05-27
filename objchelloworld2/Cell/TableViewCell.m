//
//  TableViewCell.m
//  objchelloworld2
//
//  Created by admin on 26.05.2020.
//  Copyright © 2020 voytin. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

//создать лейбл
- (void)createLabel {
    self.label = [[UILabel alloc] init];
    [self.contentView addSubview:self.label];
    self.label.translatesAutoresizingMaskIntoConstraints = false;
    [self.label.centerYAnchor constraintEqualToAnchor:self.contentView.centerYAnchor].active = true;
    [self.label.centerXAnchor constraintEqualToAnchor:self.contentView.centerXAnchor].active = true;
}

//установить контент
- (void)setContentWithText:(NSString*)text {
    [self createLabel];
    self.label.text = text;
}

@end
