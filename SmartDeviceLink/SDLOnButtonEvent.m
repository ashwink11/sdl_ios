//  SDLOnButtonEvent.m
//

#import "SDLOnButtonEvent.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLOnButtonEvent

- (instancetype)init {
    if (self = [super initWithName:SDLNameOnButtonEvent]) {
    }
    return self;
}

- (void)setButtonName:(SDLButtonName)buttonName {
    [parameters sdl_setObject:buttonName forName:SDLNameButtonName];
}

- (SDLButtonName)buttonName {
    NSError *error = nil;
    return [parameters sdl_enumForName:SDLRPCParameterNameButtonName error:&error];
}

- (void)setButtonEventMode:(SDLButtonEventMode)buttonEventMode {
    [parameters sdl_setObject:buttonEventMode forName:SDLNameButtonEventMode];
}

- (SDLButtonEventMode)buttonEventMode {
    NSError *error = nil;
    return [parameters sdl_enumForName:SDLRPCParameterNameButtonEventMode error:&error];
}

- (void)setCustomButtonID:(nullable NSNumber<SDLInt> *)customButtonID {
    [parameters sdl_setObject:customButtonID forName:SDLNameCustomButtonId];
}

- (nullable NSNumber<SDLInt> *)customButtonID {
    return [parameters sdl_objectForName:SDLRPCParameterNameCustomButtonId ofClass:NSNumber.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
