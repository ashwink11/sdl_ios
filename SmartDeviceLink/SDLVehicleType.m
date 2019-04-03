//  SDLVehicleType.m
//


#import "SDLVehicleType.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLVehicleType

- (void)setMake:(nullable NSString *)make {
    [store sdl_setObject:make forName:SDLNameMake];
}

- (nullable NSString *)make {
    return [store sdl_objectForName:SDLRPCParameterNameMake ofClass:NSString.class error:nil];
}

- (void)setModel:(nullable NSString *)model {
    [store sdl_setObject:model forName:SDLNameModel];
}

- (nullable NSString *)model {
    return [store sdl_objectForName:SDLRPCParameterNameModel ofClass:NSString.class error:nil];
}

- (void)setModelYear:(nullable NSString *)modelYear {
    [store sdl_setObject:modelYear forName:SDLNameModelYear];
}

- (nullable NSString *)modelYear {
    return [store sdl_objectForName:SDLRPCParameterNameModelYear ofClass:NSString.class error:nil];
}

- (void)setTrim:(nullable NSString *)trim {
    [store sdl_setObject:trim forName:SDLNameTrim];
}

- (nullable NSString *)trim {
    return [store sdl_objectForName:SDLRPCParameterNameTrim ofClass:NSString.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
