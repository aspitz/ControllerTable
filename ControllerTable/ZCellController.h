//
//  ZCellController.h
//  ControllerTable
//
//  Created by Ayal Spitz on 4/27/14.
//  Copyright (c) 2014 Ayal Spitz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZCellController : UIViewController{
    UITableViewCell *_cell;
    CGFloat _cellHeight;
}

@property (nonatomic, readonly) UITableViewCell *cell;
@property (nonatomic, readonly) CGFloat cellHeight;

@end
