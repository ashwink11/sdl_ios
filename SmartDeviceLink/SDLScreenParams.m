//  SDLScreenParams.m
//

#import "SDLScreenParams.h"

#import "NSMutableDictionary+Store.h"
#import "SDLImageResolution.h"
#import "SDLNames.h"
#import "SDLTouchEventCapabilities.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLScreenParams

- (void)setResolution:(SDLImageResolution *)resolution {
    [store sdl_setObject:resolution forName:SDLNameResolution];
}

- (SDLImageResolution *)resolution {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameResolution ofClass:SDLImageResolution.class error:&error];
}

- (void)setTouchEventAvailable:(nullable SDLTouchEventCapabilities *)touchEventAvailable {
    [store sdl_setObject:touchEventAvailable forName:SDLNameTouchEventAvailable];
}

- (nullable SDLTouchEventCapabilities *)touchEventAvailable {
    return [store sdl_objectForName:SDLNameTouchEventAvailable ofClass:SDLTouchEventCapabilities.class];
}

@end

NS_ASSUME_NONNULL_END
