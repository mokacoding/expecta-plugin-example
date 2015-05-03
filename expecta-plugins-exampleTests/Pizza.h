#import <Foundation/Foundation.h>

@interface Pizza : NSObject

- (BOOL)hasBeenDelivered;

@end

@interface PizzaDelivery : NSObject

+ (Pizza *)bringMePizza;

@end
