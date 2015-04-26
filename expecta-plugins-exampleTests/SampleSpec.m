#import <Specta.h>
#import <Expecta.h>
#import "Orange.h"

SpecBegin(SampleSpec)

describe(@"The expecta matchers libray", ^{
    context(@"out of the box", ^{
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

        context(@"when it comes to arrays", ^{
            it(@"can test for count, emptiness and contained objects", ^{
                NSArray *anArray = @[ @"red", @"yellow", @"pink", @"black", @"blue" ];

                // expect(anArray).toNot.beEmpty();
                expect(anArray).to.haveCountOf(5);
                expect(anArray).to.contain(@"black");
            });
        });

        context(@"when it comes to strings", ^{
            it(@"is not gonna disappoint you", ^{
                NSString *aString = @"lorem ipsum dolor sit amet";

                expect(aString).to.beginWith(@"lorem");
                expect(aString).to.endWith(@"amet");
                // TODO: RegEx
            });
        });

        it(@"also have powerful assertions for numbers", ^{
            expect(99).to.beCloseToWithin(100, 3);
            expect(97).to.beInTheRangeOf(90, 100);
        });

        context(@"and there's more", ^{
            expect([Orange class]).to.beSubclassOf([Fruit class]);
            expect([Orange class]).to.respondTo(@selector(squeeze));
            // TODO: expect(^{}).to.raiseAny();
        });
    });
});

SpecEnd
