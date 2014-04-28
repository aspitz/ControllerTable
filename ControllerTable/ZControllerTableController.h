//
//  ZControllerTableController.h
//  ControllerTable
//
//  Created by Ayal Spitz on 4/27/14.
//  Copyright (c) 2014 Ayal Spitz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZCellController;

@interface ZControllerTableController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

- (void)addCellController:(ZCellController *)cellController;

@end
