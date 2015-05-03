//
//  EXPMatchers+isAFruit.m
//  expecta-plugins-example
//
//  Created by Giovanni on 3/05/2015.
//  Copyright (c) 2015 mokacoding. All rights reserved.
//

#import "EXPMatchers+isAFruit.h"
#import "Fruit.h"

EXPMatcherImplementationBegin(isAFruit, (void)) {
    BOOL actualIsNil = actual == nil;

    prerequisite(^BOOL {
        return !actualIsNil;
    });

    match(^BOOL {
        return [actual isKindOfClass:[Fruit class]];
    });

    failureMessageForTo(^NSString * {
        if (actualIsNil) {
            return @"the actual value in nil/null";
        }
        return [NSString stringWithFormat:@"expected: kind of %@, got: an instance of %@", [Fruit class], [actual class]];
    });

    failureMessageForNotTo(^NSString * {
        if (actualIsNil) {
            return @"the actual value in nil/null";
        }
        return [NSString stringWithFormat:@"expected: not kind of %@, got: an instance of %@", [Fruit class], [actual class]];
    });
}
EXPMatcherImplementationEnd
