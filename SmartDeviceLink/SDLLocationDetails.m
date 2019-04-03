//  SDLLocationDetails.m
//

#import "SDLLocationDetails.h"

#import "NSMutableDictionary+Store.h"
#import "SDLImage.h"
#import "SDLLocationCoordinate.h"
#import "SDLNames.h"
#import "SDLOasisAddress.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLLocationDetails

- (void)setCoordinate:(nullable SDLLocationCoordinate *)coordinate {
    [store sdl_setObject:coordinate forName:SDLNameLocationCoordinate];
}

- (nullable SDLLocationCoordinate *)coordinate {
    return [store sdl_objectForName:SDLRPCParameterNameLocationCoordinate ofClass:SDLLocationCoordinate.class error:nil];
}

- (void)setLocationName:(nullable NSString *)locationName {
    [store sdl_setObject:locationName forName:SDLNameLocationName];
}

- (nullable NSString *)locationName {
    return [store sdl_objectForName:SDLRPCParameterNameLocationName ofClass:NSString.class error:nil];
}

- (void)setAddressLines:(nullable NSArray<NSString *> *)addressLines {
    [store sdl_setObject:addressLines forName:SDLNameAddressLines];
}

- (nullable NSArray<NSString *> *)addressLines {
    return [store sdl_objectsForName:SDLRPCParameterNameAddressLines ofClass:NSString.class error:nil];
}

- (void)setLocationDescription:(nullable NSString *)locationDescription {
    [store sdl_setObject:locationDescription forName:SDLNameLocationDescription];
}

- (nullable NSString *)locationDescription {
    return [store sdl_objectForName:SDLRPCParameterNameLocationDescription ofClass:NSString.class error:nil];
}

- (void)setPhoneNumber:(nullable NSString *)phoneNumber {
    [store sdl_setObject:phoneNumber forName:SDLNamePhoneNumber];
}

- (nullable NSString *)phoneNumber {
    return [store sdl_objectForName:SDLRPCParameterNamePhoneNumber ofClass:NSString.class error:nil];
}

- (void)setLocationImage:(nullable SDLImage *)locationImage {
    [store sdl_setObject:locationImage forName:SDLNameLocationImage];
}

- (nullable SDLImage *)locationImage {
    return [store sdl_objectForName:SDLRPCParameterNameLocationImage ofClass:SDLImage.class error:nil];
}

- (void)setSearchAddress:(nullable SDLOasisAddress *)searchAddress {
    [store sdl_setObject:searchAddress forName:SDLNameSearchAddress];
}

- (nullable SDLOasisAddress *)searchAddress {
    return [store sdl_objectForName:SDLRPCParameterNameSearchAddress ofClass:SDLOasisAddress.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
