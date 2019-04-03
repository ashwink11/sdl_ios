//
//  SDLTemperature.m
//

#import "SDLTemperature.h"
#import "SDLNames.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLTemperature

- (instancetype)initWithUnit:(SDLTemperatureUnit)unit value:(float)value {
    self = [self init];
    if (!self) {
        return nil;
    }
    
    self.unit = unit;
    self.value = @(value);
    
    return self;
}

- (void)setUnit:(SDLTemperatureUnit)unit {
    [store sdl_setObject:unit forName:SDLNameUnit];
}

- (SDLTemperatureUnit)unit {
    NSError *error = nil;
    return [store sdl_enumForName:SDLRPCParameterNameUnit error:&error];
}

- (void)setValue:(NSNumber<SDLFloat> *)value {
    [store sdl_setObject:value forName:SDLNameValue];
}

- (NSNumber<SDLFloat> *)value {
    NSError *error = nil;
    return [store sdl_objectForName:SDLRPCParameterNameValue ofClass:NSNumber.class error:&error];
}

@end

NS_ASSUME_NONNULL_END
