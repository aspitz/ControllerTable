//
//  ZViewController.m
//  ControllerTable
//
//  Created by Ayal Spitz on 4/27/14.
//  Copyright (c) 2014 Ayal Spitz. All rights reserved.
//

#import "ZViewController.h"
#import "ZCellController.h"

@interface ZViewController ()

@end

@implementation ZViewController

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    ZCellController *cellController = [[ZCellController alloc]init];
    cellController.view.backgroundColor = [UIColor redColor];
    [cellController.cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    [self addCellController:cellController];

    cellController = [[ZCellController alloc]init];
    cellController.view.backgroundColor = [UIColor greenColor];
    [self addCellController:cellController];

    cellController = [[ZCellController alloc]init];
    cellController.view.backgroundColor = [UIColor blueColor];
    [self addCellController:cellController];
}

@end
