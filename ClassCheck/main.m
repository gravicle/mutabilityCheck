//
//  main.m
//  ClassCheck
//
//  Created by Amit on 8/24/15.
//  Copyright (c) 2015 ProductHunt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SomeClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *probablyImmutableArray = [[SomeClass new] returnSomeImmutableArray];
        NSArray *immutableArray = [NSArray new];
        
        if ([immutableArray isKindOfClass:[NSMutableArray class]]) {
            NSLog(@"immutableArray: mutable");
        } else {
            NSLog(@"immutableArray: immutable");
        }
        
        if ([probablyImmutableArray isKindOfClass:[NSMutableArray class]]) {
            NSLog(@"probablyImmutableArray: mutable");
        } else {
            NSLog(@"probablyImmutableArray: immutable");
        }
    }
    return 0;
}