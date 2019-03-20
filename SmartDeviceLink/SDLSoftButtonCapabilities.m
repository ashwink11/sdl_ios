//  SDLSoftButtonCapabilities.m
//


#import "SDLSoftButtonCapabilities.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLSoftButtonCapabilities

- (void)setShortPressAvailable:(NSNumber<SDLBool> *)shortPressAvailable {
    [store sdl_setObject:shortPressAvailable forName:SDLNameShortPressAvailable];
}

- (NSNumber<SDLBool> *)shortPressAvailable {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameShortPressAvailable ofClass:NSNumber.class error:&error];
}

- (void)setLongPressAvailable:(NSNumber<SDLBool> *)longPressAvailable {
    [store sdl_setObject:longPressAvailable forName:SDLNameLongPressAvailable];
}

- (NSNumber<SDLBool> *)longPressAvailable {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameLongPressAvailable ofClass:NSNumber.class error:&error];
}

- (void)setUpDownAvailable:(NSNumber<SDLBool> *)upDownAvailable {
    [store sdl_setObject:upDownAvailable forName:SDLNameUpDownAvailable];
}

- (NSNumber<SDLBool> *)upDownAvailable {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameUpDownAvailable ofClass:NSNumber.class error:&error];
}

- (void)setImageSupported:(NSNumber<SDLBool> *)imageSupported {
    [store sdl_setObject:imageSupported forName:SDLNameImageSupported];
}

- (NSNumber<SDLBool> *)imageSupported {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameImageSupported ofClass:NSNumber.class error:&error];
}

@end

NS_ASSUME_NONNULL_END
