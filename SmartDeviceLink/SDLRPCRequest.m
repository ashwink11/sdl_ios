//  SDLRPCRequest.m
//


#import "SDLRPCRequest.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLRPCRequest

- (NSNumber<SDLInt> *)correlationID {
    NSError *error;
    return [function sdl_objectForName:SDLRPCParameterNameCorrelationId ofClass:NSNumber.class error:&error];
}

- (void)setCorrelationID:(NSNumber<SDLInt> *)corrID {
    [function sdl_setObject:corrID forName:SDLNameCorrelationId];
}

@end

NS_ASSUME_NONNULL_END
