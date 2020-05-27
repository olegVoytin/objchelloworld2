//
//  ViewController.m
//  objchelloworld2
//
//  Created by admin on 26.05.2020.
//  Copyright © 2020 voytin. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) UITableView *mainTable;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createTableView];
    self.mainTable.delegate = self;
    self.mainTable.dataSource = self;
    [self createHierarhy];
    [self setupConstraints];
}

- (void)createTableView {
    UITableView *mainTable = [[UITableView alloc] init];
    self.mainTable = mainTable;
    self.mainTable.translatesAutoresizingMaskIntoConstraints = false;
}

- (void)createHierarhy {
    [self.view addSubview:self.mainTable];
}

- (void)setupConstraints {
    [self.mainTable.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = true;
    [self.mainTable.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = true;
    [self.mainTable.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = true;
    [self.mainTable.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = true;
}

#pragma mark - Дата сорс
//количество строк
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 12;
}

//формирование ячейки по индексу
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [[TableViewCell alloc] init];
    NSString *text = [[NSString alloc] initWithFormat:@"12"];
    [cell setContentWithText:text];
    return cell;
}

#pragma mark - Делегат
//высота ячеек
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

@end
