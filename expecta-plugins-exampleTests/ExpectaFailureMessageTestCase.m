#import "ExpectaFailureMessageTestCase.h"

@interface ExpectaFailureMessageTestCase ()

@property (nonatomic, strong) NSMutableArray *expectedFailureDescriptions;

@end

@implementation ExpectaFailureMessageTestCase

- (void)setUp {
    [super setUp];
    self.expectedFailureDescriptions = [NSMutableArray array];
}

- (void)tearDown {
    XCTAssertEqual([self.expectedFailureDescriptions count], (NSUInteger)0);
    [super tearDown];
}

- (void)recordFailureWithDescription:(NSString *)description inFile:(NSString *)filePath atLine:(NSUInteger)lineNumber expected:(BOOL)expected {
    if ([self.expectedFailureDescriptions containsObject:description]) {
        [self.expectedFailureDescriptions removeObject:description];
    } else {
        [super recordFailureWithDescription:description inFile:filePath atLine:lineNumber expected:expected];
    }
}

- (void)expectFailureWithDescription:(NSString *)description {
    [self.expectedFailureDescriptions addObject:description];
}

@end
