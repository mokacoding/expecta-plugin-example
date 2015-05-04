/**
 *  See: https://github.com/kylef/Expecta-Comparison/blob/master/ExpectaComparisonTests/ExpectaComparisonTestCase.h
 */
#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>

@interface ExpectaFailureMessageTestCase : XCTestCase

- (void)expectFailureWithDescription:(NSString *)description;

@end
