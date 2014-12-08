//
//  NBColorClass.h
//  Lesson30-HomeWork
//
//  Created by Nick Bibikov on 12/5/14.
//  Copyright (c) 2014 Nick Bibikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NBColorClass : NSObject  

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) UIColor* color;
@property (strong, nonatomic) NSString* valueHUE;

- (NSDictionary*) randomColor;
-(NSString *) randomName;


@end
