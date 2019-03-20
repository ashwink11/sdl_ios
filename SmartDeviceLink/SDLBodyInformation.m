//  SDLBodyInformation.m
//


#import "SDLBodyInformation.h"

#import "NSMutableDictionary+Store.h"
#import "SDLIgnitionStableStatus.h"
#import "SDLIgnitionStatus.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLBodyInformation

- (void)setParkBrakeActive:(NSNumber<SDLBool> *)parkBrakeActive {
    [store sdl_setObject:parkBrakeActive forName:SDLNameParkBrakeActive];
}

- (NSNumber<SDLBool> *)parkBrakeActive {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameParkBrakeActive ofClass:NSNumber.class error:&error];
}

- (void)setIgnitionStableStatus:(SDLIgnitionStableStatus)ignitionStableStatus {
    [store sdl_setObject:ignitionStableStatus forName:SDLNameIgnitionStableStatus];
}

- (SDLIgnitionStableStatus)ignitionStableStatus {
    NSError *error;
    return [store sdl_enumForName:SDLRPCParameterNameIgnitionStableStatus error:&error];
}

- (void)setIgnitionStatus:(SDLIgnitionStatus)ignitionStatus {
    [store sdl_setObject:ignitionStatus forName:SDLNameIgnitionStatus];
}

- (SDLIgnitionStatus)ignitionStatus {
    NSError *error;
    return [store sdl_enumForName:SDLRPCParameterNameIgnitionStatus error:&error];
}

- (void)setDriverDoorAjar:(nullable NSNumber<SDLBool> *)driverDoorAjar {
    [store sdl_setObject:driverDoorAjar forName:SDLNameDriverDoorAjar];
}

- (nullable NSNumber<SDLBool> *)driverDoorAjar {
    return [store sdl_objectForName:SDLRPCParameterNameDriverDoorAjar ofClass:NSNumber.class];
}

- (void)setPassengerDoorAjar:(nullable NSNumber<SDLBool> *)passengerDoorAjar {
    [store sdl_setObject:passengerDoorAjar forName:SDLNamePassengerDoorAjar];
}

- (nullable NSNumber<SDLBool> *)passengerDoorAjar {
    return [store sdl_objectForName:SDLRPCParameterNamePassengerDoorAjar ofClass:NSNumber.class];
}

- (void)setRearLeftDoorAjar:(nullable NSNumber<SDLBool> *)rearLeftDoorAjar {
    [store sdl_setObject:rearLeftDoorAjar forName:SDLNameRearLeftDoorAjar];
}

- (nullable NSNumber<SDLBool> *)rearLeftDoorAjar {
    return [store sdl_objectForName:SDLRPCParameterNameRearLeftDoorAjar ofClass:NSNumber.class];
}

- (void)setRearRightDoorAjar:(nullable NSNumber<SDLBool> *)rearRightDoorAjar {
    [store sdl_setObject:rearRightDoorAjar forName:SDLNameRearRightDoorAjar];
}

- (nullable NSNumber<SDLBool> *)rearRightDoorAjar {
    return [store sdl_objectForName:SDLRPCParameterNameRearRightDoorAjar ofClass:NSNumber.class];
}

@end

NS_ASSUME_NONNULL_END
