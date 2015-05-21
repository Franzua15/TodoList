//
//  TLItemStore.h
//  TodoList
//
//  Created by Davor Gallegos on 5/20/15.
//  Copyright (c) 2015 Davor Franzua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface TLItemStore : NSObject

@property (nonatomic, readonly) NSManagedObjectContext *managedObjectContext;

+(instancetype)sharedStore;

@end
