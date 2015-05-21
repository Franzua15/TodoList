//
//  Item.m
//  TodoList
//
//  Created by Davor Gallegos on 5/20/15.
//  Copyright (c) 2015 Davor Franzua. All rights reserved.
//

#import "Item.h"


@implementation Item

@dynamic checked;
@dynamic text;

-(void)awakeFromInsert
{
    [super awakeFromInsert];
    
    self.text = @"";
}

@end
