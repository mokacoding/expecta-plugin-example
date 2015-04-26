#import <Specta.h>
#import <Expecta.h>
#import "Orange.h"
#import "Pizza.h"

SpecBegin(ExpectaPost)

describe(@"The expecta matchers libray", ^{
    context(@"has all the matchers you would expect", ^{
        it(@"can test for equality", ^{
            expect(@42).to.equal(@42);
        });

        it(@"can test for true and false", ^{
            expect(YES).to.beTruthy();
            expect(NO).to.beFalsy();
        });

        it(@"can test for nil", ^{
            expect(nil).to.beNil();
        });

        it(@"or not", ^{
            expect([NSObject new]).toNot.beNil();
            expect(YES).toNot.beFalsy();
            expect(@1).notTo.equal(@2);
        });
    });

    context(@"when it comes to arrays", ^{
        it(@"can test for count, emptiness and contained objects", ^{
            NSArray *anArray = @[ @"red", @"yellow", @"pink", @"black", @"blue" ];

            expect(anArray).toNot.beEmpty();
            expect(anArray).to.haveCountOf(5);
            expect(anArray).to.contain(@"black");
        });
    });

    context(@"and when it comes to strings", ^{
        __block NSString *aString = @"lorem ipsum dolor sit amet";

        it(@"is not gonna disappoint you", ^{
            expect(aString).to.beginWith(@"lorem");
            expect(aString).to.endWith(@"amet");
        });

        it(@"can even match using regular expressions", ^{
            expect(aString).to.match(@"lorem i.* dolor|marameo");
        });
    });

    it(@"also has powerful assertions for numbers", ^{
        expect(42).to.beLessThanOrEqualTo(50);
        expect(99).to.beCloseToWithin(100, 3);
        expect(97).to.beInTheRangeOf(90, 100);
    });

    context(@"and there's more", ^{
        it(@"allows us to asert object's properties", ^{
            expect([Orange class]).to.beSubclassOf([Fruit class]);
            expect([Orange class]).to.respondTo(@selector(squeeze));
        });

        it(@"and even test for code that raises exceptions", ^{
            expect(^{
                // Note: the compiler already throws warning here,
                // but for the sake of the example will behave like silly developers and ignore it
                NSMutableArray *immutableArray = [NSArray array];
                [immutableArray addObject:@"a"];
            }).to.raiseAny();
        });
    });

    context(@"and all the above can be done asyncronously!", ^{
        Pizza *quattroStagioni = [PizzaDelivery bringMePizza];
        expect([quattroStagioni hasBeenDelivered]).will.beTruthy();
    });
});

SpecEnd
