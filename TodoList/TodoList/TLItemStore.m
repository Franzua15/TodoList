//
//  TLItemStore.m
//  TodoList
//
//  Created by Davor Gallegos on 5/20/15.
//  Copyright (c) 2015 Davor Franzua. All rights reserved.
//

#import "TLItemStore.h"

@interface TLItemStore ()

@property (nonatomic) NSManagedObjectContext *managedObjectContext;

@end

@implementation TLItemStore

#pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.managedObjectContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
        
        NSManagedObjectModel *model = [NSManagedObjectModel mergedModelFromBundles:nil];
        
        NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
        
        NSURL *appDocumentsFolderURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:nil error:nil];
        
        NSURL *sqliteURL = [appDocumentsFolderURL URLByAppendingPathComponent:@"items.sqlite"];
        
        if (<#condition#>) {
            <#statements#>
        }
        
    }
    return self;
}

+ (instancetype)sharedStore
{
    static TLItemStore *sharedStore = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedStore = [[self alloc] init];
    });
    
    return sharedStore;
}


@end
