//  SDLTouchCoord.m
//


#import "SDLTouchCoord.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLTouchCoord

- (void)setX:(NSNumber<SDLFloat> *)x {
    [store sdl_setObject:x forName:SDLNameX];
}

- (NSNumber<SDLFloat> *)x {
    NSError *error = nil;
    return [store sdl_objectForName:SDLRPCParameterNameX ofClass:NSNumber.class error:&error];
}

- (void)setY:(NSNumber<SDLFloat> *)y {
    [store sdl_setObject:y forName:SDLNameY];
}

- (NSNumber<SDLFloat> *)y {
    NSError *error = nil;
    return [store sdl_objectForName:SDLRPCParameterNameY ofClass:NSNumber.class error:&error];
}

@end

NS_ASSUME_NONNULL_END
