//
//  SDLClimateControlCapabilities.m
//

#import "SDLClimateControlCapabilities.h"
#import "SDLNames.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLClimateControlCapabilities

- (instancetype)initWithModuleName:(NSString *)moduleName fanSpeedAvailable:(BOOL)fanSpeedAvailable desiredTemperatureAvailable:(BOOL)desiredTemperatureAvailable acEnableAvailable:(BOOL)acEnableAvailable acMaxEnableAvailable:(BOOL)acMaxEnableAvailable circulateAirAvailable:(BOOL)circulateAirEnableAvailable autoModeEnableAvailable:(BOOL)autoModeEnableAvailable dualModeEnableAvailable:(BOOL)dualModeEnableAvailable defrostZoneAvailable:(BOOL)defrostZoneAvailable ventilationModeAvailable:(BOOL)ventilationModeAvailable {

    return [self initWithModuleName:moduleName fanSpeedAvailable:fanSpeedAvailable desiredTemperatureAvailable:desiredTemperatureAvailable acEnableAvailable:acEnableAvailable acMaxEnableAvailable:acMaxEnableAvailable circulateAirAvailable:circulateAirEnableAvailable autoModeEnableAvailable:autoModeEnableAvailable dualModeEnableAvailable:dualModeEnableAvailable defrostZoneAvailable:defrostZoneAvailable ventilationModeAvailable:ventilationModeAvailable heatedSteeringWheelAvailable:NO heatedWindshieldAvailable:NO heatedRearWindowAvailable:NO heatedMirrorsAvailable:NO];
}

- (instancetype)initWithModuleName:(NSString *)moduleName fanSpeedAvailable:(BOOL)fanSpeedAvailable desiredTemperatureAvailable:(BOOL)desiredTemperatureAvailable acEnableAvailable:(BOOL)acEnableAvailable acMaxEnableAvailable:(BOOL)acMaxEnableAvailable circulateAirAvailable:(BOOL)circulateAirEnableAvailable autoModeEnableAvailable:(BOOL)autoModeEnableAvailable dualModeEnableAvailable:(BOOL)dualModeEnableAvailable defrostZoneAvailable:(BOOL)defrostZoneAvailable ventilationModeAvailable:(BOOL)ventilationModeAvailable heatedSteeringWheelAvailable:(BOOL)steeringWheelAvailable heatedWindshieldAvailable:(BOOL)windshieldAvailable heatedRearWindowAvailable:(BOOL)rearWindowAvailable heatedMirrorsAvailable:(BOOL)mirrorsAvailable {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.moduleName = moduleName;
    self.fanSpeedAvailable = @(fanSpeedAvailable);
    self.desiredTemperatureAvailable = @(desiredTemperatureAvailable);
    self.acEnableAvailable = @(acEnableAvailable);
    self.acMaxEnableAvailable = @(acMaxEnableAvailable);
    self.circulateAirEnableAvailable = @(circulateAirEnableAvailable);
    self.autoModeEnableAvailable = @(autoModeEnableAvailable);
    self.dualModeEnableAvailable = @(dualModeEnableAvailable);
    self.defrostZoneAvailable = @(defrostZoneAvailable);
    self.ventilationModeAvailable = @(ventilationModeAvailable);
    self.heatedSteeringWheelAvailable = @(steeringWheelAvailable);
    self.heatedWindshieldAvailable = @(windshieldAvailable);
    self.heatedRearWindowAvailable = @(rearWindowAvailable);
    self.heatedMirrorsAvailable = @(mirrorsAvailable);
    return self;
}

- (void)setModuleName:(NSString *)moduleName {
    [store sdl_setObject:moduleName forName:SDLNameModuleName];
}

- (NSString *)moduleName {
    NSError *error = nil;
    return [store sdl_objectForName:SDLRPCParameterNameModuleName ofClass:NSString.class error:&error];
}

- (void)setFanSpeedAvailable:(nullable NSNumber<SDLBool> *)fanSpeedAvailable {
    [store sdl_setObject:fanSpeedAvailable forName:SDLNameFanSpeedAvailable];
}

- (nullable NSNumber<SDLBool> *)fanSpeedAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameFanSpeedAvailable ofClass:NSNumber.class error:nil];
}

- (void)setDesiredTemperatureAvailable:(nullable NSNumber<SDLBool> *)desiredTemperatureAvailable {
    [store sdl_setObject:desiredTemperatureAvailable forName:SDLNameDesiredTemperatureAvailable];
}

- (nullable NSNumber<SDLBool> *)desiredTemperatureAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDesiredTemperatureAvailable ofClass:NSNumber.class error:nil];
}

- (void)setAcEnableAvailable:(nullable NSNumber<SDLBool> *)acEnableAvailable {
    [store sdl_setObject:acEnableAvailable forName:SDLNameACEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)acEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameACEnableAvailable ofClass:NSNumber.class error:nil];
}

- (void)setAcMaxEnableAvailable:(nullable NSNumber<SDLBool> *)acMaxEnableAvailable {
    [store sdl_setObject:acMaxEnableAvailable forName:SDLNameACMaxEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)acMaxEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameACMaxEnableAvailable ofClass:NSNumber.class error:nil];
}

- (void)setCirculateAirEnableAvailable:(nullable NSNumber<SDLBool> *)circulateAirEnableAvailable {
    [store sdl_setObject:circulateAirEnableAvailable forName:SDLNameCirculateAirEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)circulateAirEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameCirculateAirEnableAvailable ofClass:NSNumber.class error:nil];
}

- (void)setAutoModeEnableAvailable:(nullable NSNumber<SDLBool> *)autoModeEnableAvailable {
    [store sdl_setObject:autoModeEnableAvailable forName:SDLNameAutoModeEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)autoModeEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameAutoModeEnableAvailable ofClass:NSNumber.class error:nil];
}

- (void)setDualModeEnableAvailable:(nullable NSNumber<SDLBool> *)dualModeEnableAvailable {
    [store sdl_setObject:dualModeEnableAvailable forName:SDLNameDualModeEnableAvailable];
}

- (nullable NSNumber<SDLBool> *)dualModeEnableAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDualModeEnableAvailable ofClass:NSNumber.class error:nil];
}

- (void)setDefrostZoneAvailable:(nullable NSNumber<SDLBool> *)defrostZoneAvailable {
    [store sdl_setObject:defrostZoneAvailable forName:SDLNameDefrostZoneAvailable];
}

- (nullable NSNumber<SDLBool> *)defrostZoneAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDefrostZoneAvailable ofClass:NSNumber.class error:nil];
}

- (void)setDefrostZone:(nullable NSArray <SDLDefrostZone>*)defrostZone {
    [store sdl_setObject:defrostZone forName:SDLNameDefrostZone];
}

- (nullable NSArray<SDLDefrostZone> *)defrostZone {
    return [store sdl_enumsForName:SDLRPCParameterNameDefrostZone error:nil];
}

- (void)setVentilationModeAvailable:(nullable NSNumber<SDLBool> *)ventilationModeAvailable {
    [store sdl_setObject:ventilationModeAvailable forName:SDLNameVentilationModeAvailable];
}

- (nullable NSNumber<SDLBool> *)ventilationModeAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameVentilationModeAvailable ofClass:NSNumber.class error:nil];
}

- (void)setVentilationMode:(nullable NSArray<SDLVentilationMode> *)ventilationMode {
    [store sdl_setObject:ventilationMode forName:SDLNameVentilationMode];
}

- (nullable NSArray<SDLVentilationMode> *)ventilationMode {
    return [store sdl_enumsForName:SDLRPCParameterNameVentilationMode error:nil];
}

- (void)setHeatedSteeringWheelAvailable:(nullable NSNumber<SDLBool> *)heatedSteeringWheelAvailable {
    [store sdl_setObject:heatedSteeringWheelAvailable forName:SDLNameHeatedSteeringWheelAvailable];
}

- (nullable NSNumber<SDLBool> *)heatedSteeringWheelAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameHeatedSteeringWheelAvailable ofClass:NSNumber.class error:nil];
}

- (void)setHeatedWindshieldAvailable:(nullable NSNumber<SDLBool> *)heatedWindshieldAvailable {
    [store sdl_setObject:heatedWindshieldAvailable forName:SDLNameHeatedWindshieldAvailable];
}

- (nullable NSNumber<SDLBool> *)heatedWindshieldAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameHeatedWindshieldAvailable ofClass:NSNumber.class error:nil];
}

- (void)setHeatedRearWindowAvailable:(nullable NSNumber<SDLBool> *)heatedRearWindowAvailable {
    [store sdl_setObject:heatedRearWindowAvailable forName:SDLNameHeatedRearWindowAvailable];
}

- (nullable NSNumber<SDLBool> *)heatedRearWindowAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameHeatedRearWindowAvailable ofClass:NSNumber.class error:nil];
}

- (void)setHeatedMirrorsAvailable:(nullable NSNumber<SDLBool> *)heatedMirrorsAvailable {
    [store sdl_setObject:heatedMirrorsAvailable forName:SDLNameHeatedMirrorsAvailable];
}

- (nullable NSNumber<SDLBool> *)heatedMirrorsAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameHeatedMirrorsAvailable ofClass:NSNumber.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
