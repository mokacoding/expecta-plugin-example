#import "Pizza.h"

@interface Pizza ()
@property (nonatomic, assign) BOOL delivered;
@end

@implementation Pizza

- (BOOL)hasBeenDelivered {
    return self.delivered;
}

@end

@implementation PizzaDelivery

+ (Pizza *)bringMePizza {
    Pizza *pizza = [[Pizza alloc] init];
    pizza.delivered = YES;
    return pizza;
}

@end

