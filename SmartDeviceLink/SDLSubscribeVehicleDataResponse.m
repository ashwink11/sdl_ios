//  SDLSubscribeVehicleDataResponse.m
//


#import "SDLSubscribeVehicleDataResponse.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"
#import "SDLVehicleDataResult.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLSubscribeVehicleDataResponse

- (instancetype)init {
    if (self = [super initWithName:SDLNameSubscribeVehicleData]) {
    }
    return self;
}

- (void)setGps:(nullable SDLVehicleDataResult *)gps {
    [parameters sdl_setObject:gps forName:SDLNameGPS];
}

- (nullable SDLVehicleDataResult *)gps {
    return [parameters sdl_objectForName:SDLRPCParameterNameGPS ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setSpeed:(nullable SDLVehicleDataResult *)speed {
    [parameters sdl_setObject:speed forName:SDLNameSpeed];
}

- (nullable SDLVehicleDataResult *)speed {
    return [parameters sdl_objectForName:SDLRPCParameterNameSpeed ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setRpm:(nullable SDLVehicleDataResult *)rpm {
    [parameters sdl_setObject:rpm forName:SDLNameRPM];
}

- (nullable SDLVehicleDataResult *)rpm {
    return [parameters sdl_objectForName:SDLRPCParameterNameRPM ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setFuelLevel:(nullable SDLVehicleDataResult *)fuelLevel {
    [parameters sdl_setObject:fuelLevel forName:SDLNameFuelLevel];
}

- (nullable SDLVehicleDataResult *)fuelLevel {
    return [parameters sdl_objectForName:SDLRPCParameterNameFuelLevel ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setFuelLevel_State:(nullable SDLVehicleDataResult *)fuelLevel_State {
    [parameters sdl_setObject:fuelLevel_State forName:SDLNameFuelLevelState];
}

- (nullable SDLVehicleDataResult *)fuelLevel_State {
    return [parameters sdl_objectForName:SDLRPCParameterNameFuelLevelState ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setFuelRange:(nullable SDLVehicleDataResult *)fuelRange {
    [parameters sdl_setObject:fuelRange forName:SDLNameFuelRange];
}

- (nullable SDLVehicleDataResult *)fuelRange {
    return [parameters sdl_objectForName:SDLRPCParameterNameFuelRange ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setInstantFuelConsumption:(nullable SDLVehicleDataResult *)instantFuelConsumption {
    [parameters sdl_setObject:instantFuelConsumption forName:SDLNameInstantFuelConsumption];
}

- (nullable SDLVehicleDataResult *)instantFuelConsumption {
    return [parameters sdl_objectForName:SDLRPCParameterNameInstantFuelConsumption ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setExternalTemperature:(nullable SDLVehicleDataResult *)externalTemperature {
    [parameters sdl_setObject:externalTemperature forName:SDLNameExternalTemperature];
}

- (nullable SDLVehicleDataResult *)externalTemperature {
    return [parameters sdl_objectForName:SDLRPCParameterNameExternalTemperature ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setPrndl:(nullable SDLVehicleDataResult *)prndl {
    [parameters sdl_setObject:prndl forName:SDLNamePRNDL];
}

- (nullable SDLVehicleDataResult *)prndl {
    return [parameters sdl_objectForName:SDLRPCParameterNamePRNDL ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setTirePressure:(nullable SDLVehicleDataResult *)tirePressure {
    [parameters sdl_setObject:tirePressure forName:SDLNameTirePressure];
}

- (nullable SDLVehicleDataResult *)tirePressure {
    return [parameters sdl_objectForName:SDLRPCParameterNameTirePressure ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setOdometer:(nullable SDLVehicleDataResult *)odometer {
    [parameters sdl_setObject:odometer forName:SDLNameOdometer];
}

- (nullable SDLVehicleDataResult *)odometer {
    return [parameters sdl_objectForName:SDLRPCParameterNameOdometer ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setBeltStatus:(nullable SDLVehicleDataResult *)beltStatus {
    [parameters sdl_setObject:beltStatus forName:SDLNameBeltStatus];
}

- (nullable SDLVehicleDataResult *)beltStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameBeltStatus ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setBodyInformation:(nullable SDLVehicleDataResult *)bodyInformation {
    [parameters sdl_setObject:bodyInformation forName:SDLNameBodyInformation];
}

- (nullable SDLVehicleDataResult *)bodyInformation {
    return [parameters sdl_objectForName:SDLRPCParameterNameBodyInformation ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setDeviceStatus:(nullable SDLVehicleDataResult *)deviceStatus {
    [parameters sdl_setObject:deviceStatus forName:SDLNameDeviceStatus];
}

- (nullable SDLVehicleDataResult *)deviceStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameDeviceStatus ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setDriverBraking:(nullable SDLVehicleDataResult *)driverBraking {
    [parameters sdl_setObject:driverBraking forName:SDLNameDriverBraking];
}

- (nullable SDLVehicleDataResult *)driverBraking {
    return [parameters sdl_objectForName:SDLRPCParameterNameDriverBraking ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setWiperStatus:(nullable SDLVehicleDataResult *)wiperStatus {
    [parameters sdl_setObject:wiperStatus forName:SDLNameWiperStatus];
}

- (nullable SDLVehicleDataResult *)wiperStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameWiperStatus ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setHeadLampStatus:(nullable SDLVehicleDataResult *)headLampStatus {
    [parameters sdl_setObject:headLampStatus forName:SDLNameHeadLampStatus];
}

- (nullable SDLVehicleDataResult *)headLampStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameHeadLampStatus ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setEngineOilLife:(nullable SDLVehicleDataResult *)engineOilLife {
    [parameters sdl_setObject:engineOilLife forName:SDLRPCParameterNameEngineOilLife];
}

- (nullable SDLVehicleDataResult *)engineOilLife {
    return [parameters sdl_objectForName:SDLRPCParameterNameEngineOilLife ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setEngineTorque:(nullable SDLVehicleDataResult *)engineTorque {
    [parameters sdl_setObject:engineTorque forName:SDLNameEngineTorque];
}

- (nullable SDLVehicleDataResult *)engineTorque {
    return [parameters sdl_objectForName:SDLRPCParameterNameEngineTorque ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setAccPedalPosition:(nullable SDLVehicleDataResult *)accPedalPosition {
    [parameters sdl_setObject:accPedalPosition forName:SDLNameAccelerationPedalPosition];
}

- (nullable SDLVehicleDataResult *)accPedalPosition {
    return [parameters sdl_objectForName:SDLRPCParameterNameAccelerationPedalPosition ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setSteeringWheelAngle:(nullable SDLVehicleDataResult *)steeringWheelAngle {
    [parameters sdl_setObject:steeringWheelAngle forName:SDLNameSteeringWheelAngle];
}

- (nullable SDLVehicleDataResult *)steeringWheelAngle {
    return [parameters sdl_objectForName:SDLRPCParameterNameSteeringWheelAngle ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setECallInfo:(nullable SDLVehicleDataResult *)eCallInfo {
    [parameters sdl_setObject:eCallInfo forName:SDLNameECallInfo];
}

- (nullable SDLVehicleDataResult *)eCallInfo {
    return [parameters sdl_objectForName:SDLRPCParameterNameECallInfo ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setAirbagStatus:(nullable SDLVehicleDataResult *)airbagStatus {
    [parameters sdl_setObject:airbagStatus forName:SDLNameAirbagStatus];
}

- (nullable SDLVehicleDataResult *)airbagStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameAirbagStatus ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setEmergencyEvent:(nullable SDLVehicleDataResult *)emergencyEvent {
    [parameters sdl_setObject:emergencyEvent forName:SDLNameEmergencyEvent];
}

- (nullable SDLVehicleDataResult *)emergencyEvent {
    return [parameters sdl_objectForName:SDLRPCParameterNameEmergencyEvent ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setClusterModes:(nullable SDLVehicleDataResult *)clusterModes {
    [parameters sdl_setObject:clusterModes forName:SDLNameClusterModes];
}

- (nullable SDLVehicleDataResult *)clusterModes {
    return [parameters sdl_objectForName:SDLRPCParameterNameClusterModes ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setMyKey:(nullable SDLVehicleDataResult *)myKey {
    [parameters sdl_setObject:myKey forName:SDLNameMyKey];
}

- (nullable SDLVehicleDataResult *)myKey {
    return [parameters sdl_objectForName:SDLRPCParameterNameMyKey ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setElectronicParkBrakeStatus:(nullable SDLVehicleDataResult *)electronicParkBrakeStatus {
    [parameters sdl_setObject:electronicParkBrakeStatus forName:SDLNameElectronicParkBrakeStatus];
}

- (nullable SDLVehicleDataResult *)electronicParkBrakeStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameElectronicParkBrakeStatus ofClass:SDLVehicleDataResult.class error:nil];
}

- (void)setTurnSignal:(nullable SDLVehicleDataResult *)turnSignal {
    [parameters sdl_setObject:turnSignal forName:SDLNameTurnSignal];
}

- (nullable SDLVehicleDataResult *)turnSignal {
    return [parameters sdl_objectForName:SDLRPCParameterNameTurnSignal ofClass:SDLVehicleDataResult.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
