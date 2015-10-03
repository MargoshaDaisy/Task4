//
//  KLTree.m
//  KM_LV_Task2
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "KLTree.h"
#import "KLApple.h"

@implementation KLTree

- (id)initWithSort:(NSString *)sort
{
    self = [super init];
    if (self) {
        self.sort = sort;
        self.apples = [NSMutableArray new];
        return self;
    }
    return self;
}

- (void)shake
{
    
    int n = (int)rand()%[self.apples count];
    for (int i = 0; i < n; i++)
    {
        [self.apples removeObjectAtIndex:i];
        n--;
        
    }
}
- (void)grow
{
    
    int n = (int)rand()%5;
    for (int i = 0; i < n; i++)
    {
        KLApple *newApple = [[KLApple alloc] initWithSort: self.sort];
        [self.apples addObject:newApple];        
    }
}
- (NSString*)showInformationAboutTree
{
    NSString *res = [NSString stringWithFormat:@"This tree is %@ and contains %d apples.", self.sort, (int)self.apples.count];
    return res;
}

- (void)showFullInformationAboutTree
{
    [self showInformationAboutTree];
    for (int i = 0; i < [self.apples count]; i++)
    {
        //[[self.apples objectAtIndex:i] informationAboutApple];
    }
}

@end
