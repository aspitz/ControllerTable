//
//  ZControllerTableController.m
//  ControllerTable
//
//  Created by Ayal Spitz on 4/27/14.
//  Copyright (c) 2014 Ayal Spitz. All rights reserved.
//

#import "ZControllerTableController.h"
#import "ZCellController.h"

@interface ZControllerTableController ()
@property (nonatomic, strong) NSMutableArray *cellControllers;
@end

@implementation ZControllerTableController

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
    self.cellControllers = [NSMutableArray array];
}

#pragma mark - UIViewController lifecycle

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

#pragma mark - 

- (void)addCellController:(ZCellController *)cellController{
    [self.cellControllers addObject:cellController];

    [self addChildViewController:cellController];
    [cellController didMoveToParentViewController:self];
}

- (void)removeCellController:(ZCellController *)cellController{
    [self.cellControllers addObject:cellController];

    [cellController willMoveToParentViewController:nil];
    [cellController removeFromParentViewController];
}

#pragma mark - UITableViewDataSource methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cellControllers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZCellController *cellController = self.cellControllers[indexPath.row];
    return cellController.cell;
}

#pragma mark - UITableViewDelegate Methods

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZCellController *cellController = self.cellControllers[indexPath.row];
    return cellController.cellHeight;
}

@end
