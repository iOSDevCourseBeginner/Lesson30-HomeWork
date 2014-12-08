//
//  ViewController.m
//  Lesson30-HomeWork
//
//  Created by Nick Bibikov on 12/5/14.
//  Copyright (c) 2014 Nick Bibikov. All rights reserved.
//

#import "ViewController.h"
#import "NBColorClass.h"


@interface ViewController ()

@property (strong, nonatomic) NSMutableArray* colorElementsArray;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIEdgeInsets inset = UIEdgeInsetsMake(20, 0, 0, 0);
    
    self.UITableView.contentInset = inset;
    self.UITableView.scrollIndicatorInsets = inset;
    
    // Generate students
    self.colorElementsArray = [NSMutableArray new];
    
    for (int i = 0; i < 1000; i++) {
        
        NBColorClass* colorElement = [[NBColorClass alloc] init];
        colorElement.name = [colorElement randomName];
        colorElement.color = [[colorElement randomColor] objectForKey:@"Color"];
        colorElement.valueHUE = [[colorElement randomColor] objectForKey:@"valueHUE"];
        
        [self.colorElementsArray addObject:colorElement];
    }
    
    NSLog(@"%lu", (unsigned long)[self.colorElementsArray count]);
    
    
}



#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.colorElementsArray count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* indentifier = @"Cell";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:indentifier];

    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indentifier];
        NSLog(@"Cell created");
        
    } else {
        
        NSLog(@"cell reused");
    }

    UIFont* font = [UIFont fontWithName:@"Menlo-Regular" size:16];
    UIFont* fontSmall = [UIFont fontWithName:@"Menlo-Regular" size:12];

    NBColorClass* colorElement = [self.colorElementsArray objectAtIndex:indexPath.row];
    
    cell.textLabel.font = font;
    cell.textLabel.text = colorElement.name;
    cell.backgroundColor = colorElement.color;
    
    cell.detailTextLabel.text = colorElement.valueHUE;
    cell.detailTextLabel.font = fontSmall;
    cell.detailTextLabel.textColor = [UIColor whiteColor];
    
    
    return cell;
}

@end
