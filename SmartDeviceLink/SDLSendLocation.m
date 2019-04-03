//
//  SDLSendLocation.m
//  SmartDeviceLink

#import "SDLSendLocation.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLSendLocation

- (instancetype)init {
    self = [super initWithName:SDLNameSendLocation];
    if (!self) {
        return nil;
    }

    return self;
}

- (instancetype)initWithLongitude:(double)longitude latitude:(double)latitude locationName:(nullable NSString *)locationName locationDescription:(nullable NSString *)locationDescription address:(nullable NSArray<NSString *> *)address phoneNumber:(nullable NSString *)phoneNumber image:(nullable SDLImage *)image {
    return [self initWithLongitude:longitude latitude:latitude locationName:locationName locationDescription:locationDescription displayAddressLines:address phoneNumber:phoneNumber image:image deliveryMode:nil timeStamp:nil address:nil];
}

- (instancetype)initWithLongitude:(double)longitude latitude:(double)latitude locationName:(nullable NSString *)locationName locationDescription:(nullable NSString *)locationDescription displayAddressLines:(nullable NSArray<NSString *> *)displayAddressLines phoneNumber:(nullable NSString *)phoneNumber image:(nullable SDLImage *)image deliveryMode:(nullable SDLDeliveryMode)deliveryMode timeStamp:(nullable SDLDateTime *)timeStamp address:(nullable SDLOasisAddress *)address {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.longitudeDegrees = @(longitude);
    self.latitudeDegrees = @(latitude);
    self.locationName = locationName;
    self.locationDescription = locationDescription;
    self.addressLines = displayAddressLines;
    self.phoneNumber = phoneNumber;
    self.locationImage = image;
    self.deliveryMode = deliveryMode;
    self.timeStamp = timeStamp;
    self.address = address;

    return self;
}

- (void)setLongitudeDegrees:(nullable NSNumber<SDLFloat> *)longitudeDegrees {
    [parameters sdl_setObject:longitudeDegrees forName:SDLNameLongitudeDegrees];
}

- (nullable NSNumber<SDLFloat> *)longitudeDegrees {
    return [parameters sdl_objectForName:SDLRPCParameterNameLongitudeDegrees ofClass:NSNumber.class error:nil];
}

- (void)setLatitudeDegrees:(nullable NSNumber<SDLFloat> *)latitudeDegrees {
    [parameters sdl_setObject:latitudeDegrees forName:SDLNameLatitudeDegrees];
}

- (nullable NSNumber<SDLFloat> *)latitudeDegrees {
    return [parameters sdl_objectForName:SDLRPCParameterNameLatitudeDegrees ofClass:NSNumber.class error:nil];
}

- (void)setLocationName:(nullable NSString *)locationName {
    [parameters sdl_setObject:locationName forName:SDLNameLocationName];
}

- (nullable NSString *)locationName {
    return [parameters sdl_objectForName:SDLRPCParameterNameLocationName ofClass:NSString.class error:nil];
}

- (void)setAddressLines:(nullable NSArray<NSString *> *)addressLines {
    [parameters sdl_setObject:addressLines forName:SDLNameAddressLines];
}

- (nullable NSString *)locationDescription {
    return [parameters sdl_objectForName:SDLRPCParameterNameLocationDescription ofClass:NSString.class error:nil];
}

- (void)setLocationDescription:(nullable NSString *)locationDescription {
    [parameters sdl_setObject:locationDescription forName:SDLNameLocationDescription];
}

- (nullable NSArray<NSString *> *)addressLines {
    return [parameters sdl_objectsForName:SDLRPCParameterNameAddressLines ofClass:NSString.class error:nil];
}

- (void)setPhoneNumber:(nullable NSString *)phoneNumber {
    [parameters sdl_setObject:phoneNumber forName:SDLNamePhoneNumber];
}

- (nullable NSString *)phoneNumber {
    return [parameters sdl_objectForName:SDLRPCParameterNamePhoneNumber ofClass:NSString.class error:nil];
}

- (void)setLocationImage:(nullable SDLImage *)locationImage {
    [parameters sdl_setObject:locationImage forName:SDLNameLocationImage];
}

- (nullable SDLImage *)locationImage {
    return [parameters sdl_objectForName:SDLRPCParameterNameLocationImage ofClass:SDLImage.class error:nil];
}

- (void)setDeliveryMode:(nullable SDLDeliveryMode)deliveryMode {
    [parameters sdl_setObject:deliveryMode forName:SDLNameDeliveryMode];
}

- (nullable SDLDeliveryMode)deliveryMode {
    return [parameters sdl_enumForName:SDLRPCParameterNameDeliveryMode error:nil];
}

- (void)setTimeStamp:(nullable SDLDateTime *)timeStamp {
    [parameters sdl_setObject:timeStamp forName:SDLNameLocationTimeStamp];
}

- (nullable SDLDateTime *)timeStamp {
    return [parameters sdl_objectForName:SDLRPCParameterNameTimeStamp ofClass:SDLDateTime.class error:nil];
}

- (void)setAddress:(nullable SDLOasisAddress *)address {
    [parameters sdl_setObject:address forName:SDLNameAddress];
}

- (nullable SDLOasisAddress *)address {
    return [parameters sdl_objectForName:SDLRPCParameterNameAddress ofClass:SDLOasisAddress.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
