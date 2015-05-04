#import <Expecta.h>
#import <Specta.h>
#import "EXPMatchers+beAFruit.h"
#import "Orange.h"
#import "Pizza.h"

SpecBegin(CustomMatcher)

describe(@"Orange", ^{
    it(@"is a fruit", ^{
        expect([[Orange alloc] init]).to.beAFruit();
    });
});

describe(@"Pizza", ^{
    it(@"is not a fruit", ^{
        expect([[Pizza alloc] init]).notTo.beAFruit();
    });
});

SpecEnd
