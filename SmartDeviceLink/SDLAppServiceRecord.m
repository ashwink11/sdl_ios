//
//  SDLAppServiceRecord.m
//  SmartDeviceLink
//
//  Created by Nicole on 1/25/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import "SDLAppServiceRecord.h"

#import "NSMutableDictionary+Store.h"
#import "SDLAppServiceManifest.h"
#import "SDLRPCParameterNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLAppServiceRecord

- (instancetype)initWithServiceID:(NSString *)serviceID serviceManifest:(SDLAppServiceManifest *)serviceManifest servicePublished:(BOOL)servicePublished serviceActive:(BOOL)serviceActive {
    self = [self init];
    if (!self) {
        return self;
    }

    self.serviceID = serviceID;
    self.serviceManifest = serviceManifest;
    self.servicePublished = @(servicePublished);
    self.serviceActive = @(serviceActive);

    return self;
}

- (void)setServiceID:(NSString *)serviceID {
    [store sdl_setObject:serviceID forName:SDLRPCParameterNameServiceID];
}

- (NSString *)serviceID {
    return [store sdl_objectForName:SDLRPCParameterNameServiceID ofClass:NSString.class];
}

- (void)setServiceManifest:(SDLAppServiceManifest *)serviceManifest {
    [store sdl_setObject:serviceManifest forName:SDLRPCParameterNameServiceManifest];
}

- (SDLAppServiceManifest *)serviceManifest {
    return [store sdl_objectForName:SDLRPCParameterNameServiceManifest ofClass:SDLAppServiceManifest.class];
}

- (void)setServicePublished:(NSNumber<SDLBool> *)servicePublished {
    [store sdl_setObject:servicePublished forName:SDLRPCParameterNameServicePublished];
}

- (NSNumber<SDLBool> *)servicePublished {
    return [store sdl_objectForName:SDLRPCParameterNameServicePublished ofClass:NSNumber.class];
}

- (void)setServiceActive:(NSNumber<SDLBool> *)serviceActive {
    [store sdl_setObject:serviceActive forName:SDLRPCParameterNameServiceActive];
}

- (NSNumber<SDLBool> *)serviceActive {
    return [store sdl_objectForName:SDLRPCParameterNameServiceActive ofClass:NSNumber.class];
}

@end

NS_ASSUME_NONNULL_END
