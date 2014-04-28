//
//  ZCellController.m
//  ControllerTable
//
//  Created by Ayal Spitz on 4/27/14.
//  Copyright (c) 2014 Ayal Spitz. All rights reserved.
//

#import "ZCellController.h"

@implementation ZCellController

#pragma mark - Init methods

- (id)init{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self){
        [self setup];
    }
    return self;
}

#pragma mark - Setup method

- (void)setup{
    NSString *uuid = [[NSUUID UUID]UUIDString];
    _cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:uuid];
    _cellHeight = 44.0f;
}

#pragma mark - UIViewController lifecycle

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.view.frame = self.cell.contentView.frame;
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.cell.contentView addSubview:self.view];
}

@end
