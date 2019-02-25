//
//  SDLAppServiceManifest.h
//  SmartDeviceLink
//
//  Created by Nicole on 1/25/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import "SDLRPCRequest.h"

@class SDLFunctionID;
@class SDLImage;
@class SDLMediaServiceManifest;
@class SDLSyncMsgVersion;
@class SDLWeatherServiceManifest;


NS_ASSUME_NONNULL_BEGIN

/*
 *  This manifest contains all the information necessary for the service to be published, activated, and allow consumers to interact with it
 */
@interface SDLAppServiceManifest : SDLRPCStruct

- (instancetype)initWithServiceName:(nullable NSString *)serviceName serviceType:(NSString *)serviceType serviceIcon:(nullable SDLImage *)serviceIcon allowAppConsumers:(BOOL)allowAppConsumers rpcSpecVersion:(nullable SDLSyncMsgVersion *)rpcSpecVersion handledRPCs:(nullable NSArray<NSNumber<SDLInt> *> *)handledRPCs mediaServiceManifest:(nullable SDLMediaServiceManifest *)mediaServiceManifest weatherServiceManifest:(nullable SDLWeatherServiceManifest *)weatherServiceManifest;

/**
 *  Unique name of this service.
 *
 *  String, Optional
 */
@property (nullable, strong, nonatomic) NSString *serviceName;

/**
 *  The type of service that is to be offered by this app. See AppServiceType.
 *
 *  String, See `SDLAppServiceType`, Required
 */
@property (strong, nonatomic) NSString *serviceType;

/**
 *  The file name of the icon to be associated with this service. Most likely the same as the appIcon.
 *
 *  String, Optional
 */
@property (nullable, strong, nonatomic) SDLImage *serviceIcon;

/**
 *  If true, app service consumers beyond the IVI system will be able to access this service. If false, only the IVI system will be able consume the service. If not provided, it is assumed to be false.
 *
 *  Boolean, Optional, default = NO
 */
@property (nullable, strong, nonatomic) NSNumber<SDLBool> *allowAppConsumers;

/**
 *  This is the max RPC Spec version the app service understands. This is important during the RPC passthrough functionality. If not included, it is assumed the max version of the module is acceptable.
 *
 *  SyncMsgVersion, Optional
 */
@property (nullable, strong, nonatomic) SDLSyncMsgVersion *rpcSpecVersion;

/**
 *  This field contains the Function IDs for the RPCs that this service intends to handle correctly. This means the service will provide meaningful responses. See FunctionID.
 *
 *  Array of Integers, See `SDLFunctionID`, Optional
 */
@property (nullable, strong, nonatomic) NSArray<NSNumber<SDLInt> *> *handledRPCs;

/**
 *  The media service manifest.
 *
 *  SDLMediaServiceManifest, Optional
 */
@property (nullable, strong, nonatomic) SDLMediaServiceManifest *mediaServiceManifest;

/**
 *  The weather service manifest.
 *
 *  SDLWeatherServiceManifest, Optional
 */
@property (nullable, strong, nonatomic) SDLWeatherServiceManifest *weatherServiceManifest;

@end

NS_ASSUME_NONNULL_END
