//
//  AGGViewController.m
//  Aggregator
//
//  Created by Eric Pena on 2/11/14.
//  Copyright (c) 2014 io.nsdev. All rights reserved.
//

#import "AGGViewController.h"
#import "DEVAnalytics.h"

@interface AGGViewController ()

@property (strong, nonatomic, readonly) NSArray *sourceArray;

@end

@implementation AGGViewController


- (NSArray *)sourceArray
{
    return [DEVAnalytics sharedInstance].config;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.sourceArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.sourceArray[indexPath.row];
    
    return cell;
}


@end
