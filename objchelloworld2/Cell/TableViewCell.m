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

//установить контент
- (void) setContentWithText:(NSString*)text {
    self.cellLabel.text = text;
}

@end
