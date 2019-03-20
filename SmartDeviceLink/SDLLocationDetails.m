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
    return [store sdl_objectForName:SDLNameLocationCoordinate ofClass:SDLLocationCoordinate.class];
}

- (void)setLocationName:(nullable NSString *)locationName {
    [store sdl_setObject:locationName forName:SDLNameLocationName];
}

- (nullable NSString *)locationName {
    return [store sdl_objectForName:SDLRPCParameterNameLocationName ofClass:NSString.class];
}

- (void)setAddressLines:(nullable NSArray<NSString *> *)addressLines {
    [store sdl_setObject:addressLines forName:SDLNameAddressLines];
}

- (nullable NSArray<NSString *> *)addressLines {
    return [store sdl_objectsForName:SDLRPCParameterNameAddressLines ofClass:NSString.class];
}

- (void)setLocationDescription:(nullable NSString *)locationDescription {
    [store sdl_setObject:locationDescription forName:SDLNameLocationDescription];
}

- (nullable NSString *)locationDescription {
    return [store sdl_objectForName:SDLRPCParameterNameLocationDescription ofClass:NSString.class];
}

- (void)setPhoneNumber:(nullable NSString *)phoneNumber {
    [store sdl_setObject:phoneNumber forName:SDLNamePhoneNumber];
}

- (nullable NSString *)phoneNumber {
    return [store sdl_objectForName:SDLRPCParameterNamePhoneNumber ofClass:NSString.class];
}

- (void)setLocationImage:(nullable SDLImage *)locationImage {
    [store sdl_setObject:locationImage forName:SDLNameLocationImage];
}

- (nullable SDLImage *)locationImage {
    return [store sdl_objectForName:SDLNameLocationImage ofClass:SDLImage.class];
}

- (void)setSearchAddress:(nullable SDLOasisAddress *)searchAddress {
    [store sdl_setObject:searchAddress forName:SDLNameSearchAddress];
}

- (nullable SDLOasisAddress *)searchAddress {
    return [store sdl_objectForName:SDLNameSearchAddress ofClass:SDLOasisAddress.class];
}

@end

NS_ASSUME_NONNULL_END
