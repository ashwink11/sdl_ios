//  SDLOnEncodedSyncPData.m
//

#import "SDLOnEncodedSyncPData.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLOnEncodedSyncPData

- (instancetype)init {
    if (self = [super initWithName:SDLNameOnEncodedSyncPData]) {
    }
    return self;
}

- (void)setData:(NSArray<NSString *> *)data {
    [parameters sdl_setObject:data forName:SDLNameData];
}

- (NSArray<NSString *> *)data {
    NSError *error = nil;
    return [parameters sdl_objectsForName:SDLRPCParameterNameData ofClass:NSString.class error:&error];
}

- (void)setURL:(nullable NSString *)URL {
    [parameters sdl_setObject:URL forName:SDLNameURLUppercase];
}

- (nullable NSString *)URL {
    return [parameters sdl_objectForName:SDLRPCParameterNameURLUppercase ofClass:NSString.class error:nil];
}

- (void)setTimeout:(nullable NSNumber<SDLInt> *)Timeout {
    [parameters sdl_setObject:Timeout forName:SDLNameTimeoutCapitalized];
}

- (nullable NSNumber<SDLInt> *)Timeout {
    return [parameters sdl_objectForName:SDLRPCParameterNameTimeoutCapitalized ofClass:NSNumber.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
