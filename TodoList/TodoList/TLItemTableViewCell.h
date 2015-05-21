//
//  TLItemTableViewCell.h
//  TodoList
//
//  Created by Davor Gallegos on 5/20/15.
//  Copyright (c) 2015 Davor Franzua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TLItemTableViewCell : UITableViewCell

#pragma mark - IB Outlets

@property (strong, nonatomic) IBOutlet UIButton *checkButton;

@property (strong, nonatomic) IBOutlet UILabel *itemLabel;

@end
