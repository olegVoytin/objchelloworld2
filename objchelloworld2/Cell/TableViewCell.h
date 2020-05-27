//
//  TableViewCell.h
//  objchelloworld2
//
//  Created by admin on 26.05.2020.
//  Copyright © 2020 voytin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) UILabel *label;

//установить контент
- (void)setContentWithText:(NSString*)text;

@end

NS_ASSUME_NONNULL_END
