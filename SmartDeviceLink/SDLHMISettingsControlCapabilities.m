//  SDLHMISettingsControlCapabilities.m
//

#import "SDLHMISettingsControlCapabilities.h"
#import "SDLNames.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLHMISettingsControlCapabilities

- (instancetype)initWithModuleName:(NSString *)moduleName {
    self = [self init];
    if(!self) {
        return nil;
    }
    self.moduleName = moduleName;

    return self;
}

- (instancetype)initWithModuleName:(NSString *)moduleName distanceUnitAvailable:(BOOL)distanceUnitAvailable temperatureUnitAvailable:(BOOL)temperatureUnitAvailable displayModeUnitAvailable:(BOOL)displayModeUnitAvailable {
    self = [self init];
    if(!self) {
        return nil;
    }
    self.moduleName = moduleName;
    self.distanceUnitAvailable = @(distanceUnitAvailable);
    self.temperatureUnitAvailable = @(temperatureUnitAvailable);
    self.displayModeUnitAvailable = @(displayModeUnitAvailable);

    return self;
}

- (void)setModuleName:(NSString *)moduleName {
    [store sdl_setObject:moduleName forName:SDLNameModuleName];
}

- (NSString *)moduleName {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameModuleName ofClass:NSString.class error:&error];
}


- (void)setDistanceUnitAvailable:(nullable NSNumber<SDLBool> *)distanceUnitAvailable {
    [store sdl_setObject:distanceUnitAvailable forName:SDLNameDistanceUnitAvailable];
}

- (nullable NSNumber<SDLBool> *)distanceUnitAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDistanceUnitAvailable ofClass:NSNumber.class];
}

- (void)setTemperatureUnitAvailable:(nullable NSNumber<SDLBool> *)temperatureUnitAvailable {
    [store sdl_setObject:temperatureUnitAvailable forName:SDLNameTemperatureUnitAvailable];
}

- (nullable NSNumber<SDLBool> *)temperatureUnitAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameTemperatureUnitAvailable ofClass:NSNumber.class];
}

- (void)setDisplayModeUnitAvailable:(nullable NSNumber<SDLBool> *)displayModeUnitAvailable {
    [store sdl_setObject:displayModeUnitAvailable forName:SDLNameDisplayModeUnitAvailable];
}

- (nullable NSNumber<SDLBool> *)displayModeUnitAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDisplayModeUnitAvailable ofClass:NSNumber.class];
}

@end

NS_ASSUME_NONNULL_END
