//
//  SDLHMICapabilities.m
//  SmartDeviceLink-iOS

#import "SDLHMICapabilities.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLHMICapabilities

- (void)setNavigation:(nullable NSNumber<SDLBool> *)navigation {
    [store sdl_setObject:navigation forName:SDLNameNavigation];
}

- (nullable NSNumber<SDLBool> *)navigation {
    return [store sdl_objectForName:SDLRPCParameterNameNavigation ofClass:NSNumber.class];
}

- (void)setPhoneCall:(nullable NSNumber<SDLBool> *)phoneCall {
    [store sdl_setObject:phoneCall forName:SDLNamePhoneCall];
}

- (nullable NSNumber<SDLBool> *)phoneCall {
    return [store sdl_objectForName:SDLRPCParameterNamePhoneCall ofClass:NSNumber.class];
}

- (void)setVideoStreaming:(nullable NSNumber<SDLBool> *)videoStreaming {
    [store sdl_setObject:videoStreaming forName:SDLNameVideoStreaming];
}

- (nullable NSNumber<SDLBool> *)videoStreaming {
    return [store sdl_objectForName:SDLRPCParameterNameVideoStreaming ofClass:NSNumber.class];
}

@end

NS_ASSUME_NONNULL_END
