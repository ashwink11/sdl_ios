//  SDLReadDIDResponse.m
//


#import "SDLReadDIDResponse.h"

#import "NSMutableDictionary+Store.h"
#import "SDLDIDResult.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLReadDIDResponse

- (instancetype)init {
    if (self = [super initWithName:SDLNameReadDID]) {
    }
    return self;
}

- (void)setDidResult:(nullable NSArray<SDLDIDResult *> *)didResult {
    [parameters sdl_setObject:didResult forName:SDLNameDIDResult];
}

- (nullable NSArray<SDLDIDResult *> *)didResult {
    return [parameters sdl_objectsForName:SDLRPCParameterNameDIDResult ofClass:SDLDIDResult.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
