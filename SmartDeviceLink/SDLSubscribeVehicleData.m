//  SDLSubscribeVehicleData.m
//


#import "SDLSubscribeVehicleData.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLSubscribeVehicleData

- (instancetype)init {
    if (self = [super initWithName:SDLNameSubscribeVehicleData]) {
    }
    return self;
}

- (instancetype)initWithAccelerationPedalPosition:(BOOL)accelerationPedalPosition airbagStatus:(BOOL)airbagStatus beltStatus:(BOOL)beltStatus bodyInformation:(BOOL)bodyInformation clusterModeStatus:(BOOL)clusterModeStatus deviceStatus:(BOOL)deviceStatus driverBraking:(BOOL)driverBraking eCallInfo:(BOOL)eCallInfo emergencyEvent:(BOOL)emergencyEvent engineTorque:(BOOL)engineTorque externalTemperature:(BOOL)externalTemperature fuelLevel:(BOOL)fuelLevel fuelLevelState:(BOOL)fuelLevelState gps:(BOOL)gps headLampStatus:(BOOL)headLampStatus instantFuelConsumption:(BOOL)instantFuelConsumption myKey:(BOOL)myKey odometer:(BOOL)odometer prndl:(BOOL)prndl rpm:(BOOL)rpm speed:(BOOL)speed steeringWheelAngle:(BOOL)steeringWheelAngle tirePressure:(BOOL)tirePressure wiperStatus:(BOOL)wiperStatus {
    return [self initWithAccelerationPedalPosition:accelerationPedalPosition airbagStatus:airbagStatus beltStatus:beltStatus bodyInformation:bodyInformation clusterModeStatus:clusterModeStatus deviceStatus:deviceStatus driverBraking:driverBraking eCallInfo:eCallInfo electronicParkBrakeStatus:NO emergencyEvent:emergencyEvent engineOilLife:NO engineTorque:engineTorque externalTemperature:externalTemperature fuelLevel:fuelLevel fuelLevelState:fuelLevelState fuelRange:NO gps:gps headLampStatus:headLampStatus instantFuelConsumption:instantFuelConsumption myKey:myKey odometer:odometer prndl:prndl rpm:rpm speed:speed steeringWheelAngle:steeringWheelAngle tirePressure:tirePressure turnSignal:NO wiperStatus:wiperStatus];
}

- (instancetype)initWithAccelerationPedalPosition:(BOOL)accelerationPedalPosition airbagStatus:(BOOL)airbagStatus beltStatus:(BOOL)beltStatus bodyInformation:(BOOL)bodyInformation clusterModeStatus:(BOOL)clusterModeStatus deviceStatus:(BOOL)deviceStatus driverBraking:(BOOL)driverBraking eCallInfo:(BOOL)eCallInfo electronicParkBrakeStatus:(BOOL)electronicParkBrakeStatus emergencyEvent:(BOOL)emergencyEvent engineOilLife:(BOOL)engineOilLife engineTorque:(BOOL)engineTorque externalTemperature:(BOOL)externalTemperature fuelLevel:(BOOL)fuelLevel fuelLevelState:(BOOL)fuelLevelState fuelRange:(BOOL)fuelRange gps:(BOOL)gps headLampStatus:(BOOL)headLampStatus instantFuelConsumption:(BOOL)instantFuelConsumption myKey:(BOOL)myKey odometer:(BOOL)odometer prndl:(BOOL)prndl rpm:(BOOL)rpm speed:(BOOL)speed steeringWheelAngle:(BOOL)steeringWheelAngle tirePressure:(BOOL)tirePressure turnSignal:(BOOL)turnSignal wiperStatus:(BOOL)wiperStatus {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.accPedalPosition = @(accelerationPedalPosition);
    self.airbagStatus = @(airbagStatus);
    self.beltStatus = @(beltStatus);
    self.bodyInformation = @(bodyInformation);
    self.clusterModeStatus = @(clusterModeStatus);
    self.deviceStatus = @(deviceStatus);
    self.driverBraking = @(driverBraking);
    self.eCallInfo = @(eCallInfo);
    self.electronicParkBrakeStatus = @(electronicParkBrakeStatus);
    self.emergencyEvent = @(emergencyEvent);
    self.engineOilLife = @(engineOilLife);
    self.engineTorque = @(engineTorque);
    self.externalTemperature = @(externalTemperature);
    self.fuelLevel = @(fuelLevel);
    self.fuelLevel_State = @(fuelLevelState);
    self.fuelRange = @(fuelRange);
    self.myKey = @(myKey);
    self.odometer = @(odometer);
    self.gps = @(gps);
    self.headLampStatus = @(headLampStatus);
    self.instantFuelConsumption = @(instantFuelConsumption);
    self.prndl = @(prndl);
    self.rpm = @(rpm);
    self.speed = @(speed);
    self.steeringWheelAngle = @(steeringWheelAngle);
    self.tirePressure = @(tirePressure);
    self.turnSignal = @(turnSignal);
    self.wiperStatus = @(wiperStatus);

    return self;
}

- (void)setGps:(nullable NSNumber<SDLBool> *)gps {
    [parameters sdl_setObject:gps forName:SDLNameGPS];
}

- (nullable NSNumber<SDLBool> *)gps {
    return [parameters sdl_objectForName:SDLRPCParameterNameGPS ofClass:NSNumber.class];
}

- (void)setSpeed:(nullable NSNumber<SDLBool> *)speed {
    [parameters sdl_setObject:speed forName:SDLNameSpeed];
}

- (nullable NSNumber<SDLBool> *)speed {
    return [parameters sdl_objectForName:SDLRPCParameterNameSpeed ofClass:NSNumber.class];
}

- (void)setRpm:(nullable NSNumber<SDLBool> *)rpm {
    [parameters sdl_setObject:rpm forName:SDLNameRPM];
}

- (nullable NSNumber<SDLBool> *)rpm {
    return [parameters sdl_objectForName:SDLRPCParameterNameRPM ofClass:NSNumber.class];
}

- (void)setFuelLevel:(nullable NSNumber<SDLBool> *)fuelLevel {
    [parameters sdl_setObject:fuelLevel forName:SDLNameFuelLevel];
}

- (nullable NSNumber<SDLBool> *)fuelLevel {
    return [parameters sdl_objectForName:SDLRPCParameterNameFuelLevel ofClass:NSNumber.class];
}

- (void)setFuelLevel_State:(nullable NSNumber<SDLBool> *)fuelLevel_State {
    [parameters sdl_setObject:fuelLevel_State forName:SDLNameFuelLevelState];
}

- (nullable NSNumber<SDLBool> *)fuelLevel_State {
    return [parameters sdl_objectForName:SDLRPCParameterNameFuelLevelState ofClass:NSNumber.class];
}

- (void)setFuelRange:(nullable NSNumber<SDLBool> *)fuelRange {
    [parameters sdl_setObject:fuelRange forName:SDLNameFuelRange];
}

- (nullable NSNumber<SDLBool> *)fuelRange {
    return [parameters sdl_objectForName:SDLRPCParameterNameFuelRange ofClass:NSNumber.class];
}

- (void)setInstantFuelConsumption:(nullable NSNumber<SDLBool> *)instantFuelConsumption {
    [parameters sdl_setObject:instantFuelConsumption forName:SDLNameInstantFuelConsumption];
}

- (nullable NSNumber<SDLBool> *)instantFuelConsumption {
    return [parameters sdl_objectForName:SDLRPCParameterNameInstantFuelConsumption ofClass:NSNumber.class];
}

- (void)setExternalTemperature:(nullable NSNumber<SDLBool> *)externalTemperature {
    [parameters sdl_setObject:externalTemperature forName:SDLNameExternalTemperature];
}

- (nullable NSNumber<SDLBool> *)externalTemperature {
    return [parameters sdl_objectForName:SDLRPCParameterNameExternalTemperature ofClass:NSNumber.class];
}

- (void)setPrndl:(nullable NSNumber<SDLBool> *)prndl {
    [parameters sdl_setObject:prndl forName:SDLNamePRNDL];
}

- (nullable NSNumber<SDLBool> *)prndl {
    return [parameters sdl_objectForName:SDLRPCParameterNamePRNDL ofClass:NSNumber.class];
}

- (void)setTirePressure:(nullable NSNumber<SDLBool> *)tirePressure {
    [parameters sdl_setObject:tirePressure forName:SDLNameTirePressure];
}

- (nullable NSNumber<SDLBool> *)tirePressure {
    return [parameters sdl_objectForName:SDLRPCParameterNameTirePressure ofClass:NSNumber.class];
}

- (void)setOdometer:(nullable NSNumber<SDLBool> *)odometer {
    [parameters sdl_setObject:odometer forName:SDLNameOdometer];
}

- (nullable NSNumber<SDLBool> *)odometer {
    return [parameters sdl_objectForName:SDLRPCParameterNameOdometer ofClass:NSNumber.class];
}

- (void)setBeltStatus:(nullable NSNumber<SDLBool> *)beltStatus {
    [parameters sdl_setObject:beltStatus forName:SDLNameBeltStatus];
}

- (nullable NSNumber<SDLBool> *)beltStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameBeltStatus ofClass:NSNumber.class];
}

- (void)setBodyInformation:(nullable NSNumber<SDLBool> *)bodyInformation {
    [parameters sdl_setObject:bodyInformation forName:SDLNameBodyInformation];
}

- (nullable NSNumber<SDLBool> *)bodyInformation {
    return [parameters sdl_objectForName:SDLRPCParameterNameBodyInformation ofClass:NSNumber.class];
}

- (void)setDeviceStatus:(nullable NSNumber<SDLBool> *)deviceStatus {
    [parameters sdl_setObject:deviceStatus forName:SDLNameDeviceStatus];
}

- (nullable NSNumber<SDLBool> *)deviceStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameDeviceStatus ofClass:NSNumber.class];
}

- (void)setDriverBraking:(nullable NSNumber<SDLBool> *)driverBraking {
    [parameters sdl_setObject:driverBraking forName:SDLNameDriverBraking];
}

- (nullable NSNumber<SDLBool> *)driverBraking {
    return [parameters sdl_objectForName:SDLRPCParameterNameDriverBraking ofClass:NSNumber.class];
}

- (void)setWiperStatus:(nullable NSNumber<SDLBool> *)wiperStatus {
    [parameters sdl_setObject:wiperStatus forName:SDLNameWiperStatus];
}

- (nullable NSNumber<SDLBool> *)wiperStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameWiperStatus ofClass:NSNumber.class];
}

- (void)setHeadLampStatus:(nullable NSNumber<SDLBool> *)headLampStatus {
    [parameters sdl_setObject:headLampStatus forName:SDLNameHeadLampStatus];
}

- (nullable NSNumber<SDLBool> *)headLampStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameHeadLampStatus ofClass:NSNumber.class];
}

- (void)setEngineOilLife:(nullable NSNumber<SDLBool> *)engineOilLife {
    [parameters sdl_setObject:engineOilLife forName:SDLNameEngineOilLife];
}

- (nullable NSNumber<SDLBool> *)engineOilLife {
    return [parameters sdl_objectForName:SDLRPCParameterNameEngineOilLife ofClass:NSNumber.class];
}

- (void)setEngineTorque:(nullable NSNumber<SDLBool> *)engineTorque {
    [parameters sdl_setObject:engineTorque forName:SDLNameEngineTorque];
}

- (nullable NSNumber<SDLBool> *)engineTorque {
    return [parameters sdl_objectForName:SDLRPCParameterNameEngineTorque ofClass:NSNumber.class];
}

- (void)setAccPedalPosition:(nullable NSNumber<SDLBool> *)accPedalPosition {
    [parameters sdl_setObject:accPedalPosition forName:SDLNameAccelerationPedalPosition];
}

- (nullable NSNumber<SDLBool> *)accPedalPosition {
    return [parameters sdl_objectForName:SDLRPCParameterNameAccelerationPedalPosition ofClass:NSNumber.class];
}

- (void)setSteeringWheelAngle:(nullable NSNumber<SDLBool> *)steeringWheelAngle {
    [parameters sdl_setObject:steeringWheelAngle forName:SDLNameSteeringWheelAngle];
}

- (nullable NSNumber<SDLBool> *)steeringWheelAngle {
    return [parameters sdl_objectForName:SDLRPCParameterNameSteeringWheelAngle ofClass:NSNumber.class];
}

- (void)setECallInfo:(nullable NSNumber<SDLBool> *)eCallInfo {
    [parameters sdl_setObject:eCallInfo forName:SDLNameECallInfo];
}

- (nullable NSNumber<SDLBool> *)eCallInfo {
    return [parameters sdl_objectForName:SDLRPCParameterNameECallInfo ofClass:NSNumber.class];
}

- (void)setAirbagStatus:(nullable NSNumber<SDLBool> *)airbagStatus {
    [parameters sdl_setObject:airbagStatus forName:SDLNameAirbagStatus];
}

- (nullable NSNumber<SDLBool> *)airbagStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameAirbagStatus ofClass:NSNumber.class];
}

- (void)setEmergencyEvent:(nullable NSNumber<SDLBool> *)emergencyEvent {
    [parameters sdl_setObject:emergencyEvent forName:SDLNameEmergencyEvent];
}

- (nullable NSNumber<SDLBool> *)emergencyEvent {
    return [parameters sdl_objectForName:SDLRPCParameterNameEmergencyEvent ofClass:NSNumber.class];
}

- (void)setClusterModeStatus:(nullable NSNumber<SDLBool> *)clusterModeStatus {
    [parameters sdl_setObject:clusterModeStatus forName:SDLNameClusterModeStatus];
}

- (nullable NSNumber<SDLBool> *)clusterModeStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameClusterModeStatus ofClass:NSNumber.class];
}

- (void)setMyKey:(nullable NSNumber<SDLBool> *)myKey {
    [parameters sdl_setObject:myKey forName:SDLNameMyKey];
}

- (nullable NSNumber<SDLBool> *)myKey {
    return [parameters sdl_objectForName:SDLRPCParameterNameMyKey ofClass:NSNumber.class];
}

- (void)setElectronicParkBrakeStatus:(nullable NSNumber<SDLBool> *)electronicParkBrakeStatus {
    [parameters sdl_setObject:electronicParkBrakeStatus forName:SDLNameElectronicParkBrakeStatus];
}

- (nullable NSNumber<SDLBool> *)electronicParkBrakeStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameElectronicParkBrakeStatus ofClass:NSNumber.class];
}

- (void)setTurnSignal:(nullable NSNumber<SDLBool> *)turnSignal {
    [parameters sdl_setObject:turnSignal forName:SDLNameTurnSignal];
}

- (nullable NSNumber<SDLBool> *)turnSignal {
    return [parameters sdl_objectForName:SDLRPCParameterNameTurnSignal ofClass:NSNumber.class];
}
@end

NS_ASSUME_NONNULL_END
