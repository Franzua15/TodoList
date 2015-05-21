//
//  Item.h
//  TodoList
//
//  Created by Davor Gallegos on 5/20/15.
//  Copyright (c) 2015 Davor Franzua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

/** Entity representing an item in a todo list. */
@interface Item : NSManagedObject

#pragma mark - Properties

@property (nonatomic, retain) NSNumber * checked;

@property (nonatomic, retain) NSString * text;

@end
