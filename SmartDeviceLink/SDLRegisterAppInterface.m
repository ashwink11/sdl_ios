//  SDLRegisterAppInterface.m
//


#import "SDLRegisterAppInterface.h"

#import "NSMutableDictionary+Store.h"
#import "SDLAppHMIType.h"
#import "SDLAppInfo.h"
#import "SDLDeviceInfo.h"
#import "SDLGlobals.h"
#import "SDLLanguage.h"
#import "SDLLifecycleConfiguration.h"
#import "SDLNames.h"
#import "SDLSyncMsgVersion.h"
#import "SDLTemplateColorScheme.h"
#import "SDLTTSChunk.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLRegisterAppInterface

#pragma mark - Lifecycle

- (instancetype)init {
    if (self = [super initWithName:SDLNameRegisterAppInterface]) {
    }
    return self;
}

- (instancetype)initWithLifecycleConfiguration:(SDLLifecycleConfiguration *)lifecycleConfiguration {
    NSArray<SDLAppHMIType> *allHMITypes = lifecycleConfiguration.additionalAppTypes ? [lifecycleConfiguration.additionalAppTypes arrayByAddingObject:lifecycleConfiguration.appType] : @[lifecycleConfiguration.appType];

    return [self initWithAppName:lifecycleConfiguration.appName
                           appId:lifecycleConfiguration.appId
                       fullAppId:lifecycleConfiguration.fullAppId
                 languageDesired:lifecycleConfiguration.language
                      isMediaApp:lifecycleConfiguration.isMedia
                        appTypes:allHMITypes
                    shortAppName:lifecycleConfiguration.shortAppName
                         ttsName:lifecycleConfiguration.ttsName
                      vrSynonyms:lifecycleConfiguration.voiceRecognitionCommandNames
       hmiDisplayLanguageDesired:lifecycleConfiguration.language
                      resumeHash:lifecycleConfiguration.resumeHash
                  dayColorScheme:lifecycleConfiguration.dayColorScheme
                nightColorScheme:lifecycleConfiguration.nightColorScheme];
}

- (instancetype)initWithAppName:(NSString *)appName appId:(NSString *)appId languageDesired:(SDLLanguage)languageDesired {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.appName = appName;
    self.appID = appId;
    self.fullAppID = nil;
    self.languageDesired = languageDesired;

    self.hmiDisplayLanguageDesired = languageDesired;

    UInt8 majorVersion = (UInt8)[SDLMaxProxyRPCVersion substringWithRange:NSMakeRange(0, 1)].intValue;
    UInt8 minorVersion = (UInt8)[SDLMaxProxyRPCVersion substringWithRange:NSMakeRange(2, 1)].intValue;
    UInt8 patchVersion = (UInt8)[SDLMaxProxyRPCVersion substringWithRange:NSMakeRange(4, 1)].intValue;
    self.syncMsgVersion = [[SDLSyncMsgVersion alloc] initWithMajorVersion:majorVersion minorVersion:minorVersion patchVersion:patchVersion];
    self.appInfo = [SDLAppInfo currentAppInfo];
    self.deviceInfo = [SDLDeviceInfo currentDevice];
    self.correlationID = @1;
    self.isMediaApplication = @NO;

    return self;
}

- (instancetype)initWithAppName:(NSString *)appName appId:(NSString *)appId languageDesired:(SDLLanguage)languageDesired isMediaApp:(BOOL)isMediaApp appTypes:(NSArray<SDLAppHMIType> *)appTypes shortAppName:(nullable NSString *)shortAppName {
    self = [self initWithAppName:appName appId:appId languageDesired:languageDesired];
    if (!self) {
        return nil;
    }

    self.isMediaApplication = @(isMediaApp);
    self.appHMIType = appTypes;
    self.ngnMediaScreenAppName = shortAppName;

    return self;
}

- (instancetype)initWithAppName:(NSString *)appName appId:(NSString *)appId languageDesired:(SDLLanguage)languageDesired isMediaApp:(BOOL)isMediaApp appTypes:(NSArray<SDLAppHMIType> *)appTypes shortAppName:(nullable NSString *)shortAppName ttsName:(nullable NSArray<SDLTTSChunk *> *)ttsName vrSynonyms:(nullable NSArray<NSString *> *)vrSynonyms hmiDisplayLanguageDesired:(SDLLanguage)hmiDisplayLanguageDesired resumeHash:(nullable NSString *)resumeHash {
    self = [self initWithAppName:appName appId:appId languageDesired:languageDesired isMediaApp:isMediaApp appTypes:appTypes shortAppName:shortAppName];
    if (!self) {
        return nil;
    }

    self.ttsName = [ttsName copy];
    self.vrSynonyms = [vrSynonyms copy];
    self.hmiDisplayLanguageDesired = hmiDisplayLanguageDesired;
    self.hashID = resumeHash;

    return self;
}

- (instancetype)initWithAppName:(NSString *)appName appId:(NSString *)appId fullAppId:(nullable NSString *)fullAppId languageDesired:(SDLLanguage)languageDesired isMediaApp:(BOOL)isMediaApp appTypes:(NSArray<SDLAppHMIType> *)appTypes shortAppName:(nullable NSString *)shortAppName ttsName:(nullable NSArray<SDLTTSChunk *> *)ttsName vrSynonyms:(nullable NSArray<NSString *> *)vrSynonyms hmiDisplayLanguageDesired:(SDLLanguage)hmiDisplayLanguageDesired resumeHash:(nullable NSString *)resumeHash dayColorScheme:(nullable SDLTemplateColorScheme *)dayColorScheme nightColorScheme:(nullable SDLTemplateColorScheme *)nightColorScheme {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    self = [self initWithAppName:appName appId:appId languageDesired:languageDesired isMediaApp:isMediaApp appTypes:appTypes shortAppName:shortAppName ttsName:ttsName vrSynonyms:vrSynonyms hmiDisplayLanguageDesired:hmiDisplayLanguageDesired resumeHash:resumeHash];
#pragma clang diagnostic pop

    if (!self) { return nil; }

    self.fullAppID = fullAppId;
    self.dayColorScheme = dayColorScheme;
    self.nightColorScheme = nightColorScheme;

    return self;
}

#pragma mark - Getters and Setters

- (void)setSyncMsgVersion:(SDLSyncMsgVersion *)syncMsgVersion {
    [parameters sdl_setObject:syncMsgVersion forName:SDLNameSyncMessageVersion];
}

- (SDLSyncMsgVersion *)syncMsgVersion {
    return [parameters sdl_objectForName:SDLRPCParameterNameSyncMessageVersion ofClass:SDLSyncMsgVersion.class error:nil];
}

- (void)setAppName:(NSString *)appName {
    [parameters sdl_setObject:appName forName:SDLNameAppName];
}

- (NSString *)appName {
    NSError *error = nil;
    return [parameters sdl_objectForName:SDLRPCParameterNameAppName ofClass:NSString.class error:&error];
}

- (void)setTtsName:(nullable NSArray<SDLTTSChunk *> *)ttsName {
    [parameters sdl_setObject:ttsName forName:SDLNameTTSName];
}

- (nullable NSArray<SDLTTSChunk *> *)ttsName {
    return [parameters sdl_objectsForName:SDLRPCParameterNameTTSName ofClass:SDLTTSChunk.class error:nil];
}

- (void)setNgnMediaScreenAppName:(nullable NSString *)ngnMediaScreenAppName {
    [parameters sdl_setObject:ngnMediaScreenAppName forName:SDLNameNGNMediaScreenAppName];
}

- (nullable NSString *)ngnMediaScreenAppName {
    return [parameters sdl_objectForName:SDLRPCParameterNameNGNMediaScreenAppName ofClass:NSString.class error:nil];
}

- (void)setVrSynonyms:(nullable NSArray<NSString *> *)vrSynonyms {
    [parameters sdl_setObject:vrSynonyms forName:SDLNameVRSynonyms];
}

- (nullable NSArray<NSString *> *)vrSynonyms {
    return [parameters sdl_objectsForName:SDLRPCParameterNameVRSynonyms ofClass:NSString.class error:nil];
}

- (void)setIsMediaApplication:(NSNumber<SDLBool> *)isMediaApplication {
    [parameters sdl_setObject:isMediaApplication forName:SDLNameIsMediaApplication];
}

- (NSNumber<SDLBool> *)isMediaApplication {
    NSError *error = nil;
    return [parameters sdl_objectForName:SDLRPCParameterNameIsMediaApplication ofClass:NSNumber.class error:&error];
}

- (void)setLanguageDesired:(SDLLanguage)languageDesired {
    [parameters sdl_setObject:languageDesired forName:SDLNameLanguageDesired];
}

- (SDLLanguage)languageDesired {
    NSError *error = nil;
    return [parameters sdl_enumForName:SDLRPCParameterNameLanguageDesired error:&error];
}

- (void)setHmiDisplayLanguageDesired:(SDLLanguage)hmiDisplayLanguageDesired {
    [parameters sdl_setObject:hmiDisplayLanguageDesired forName:SDLNameHMIDisplayLanguageDesired];
}

- (SDLLanguage)hmiDisplayLanguageDesired {
    NSError *error = nil;
    return [parameters sdl_enumForName:SDLRPCParameterNameHMIDisplayLanguageDesired error:&error];
}

- (void)setAppHMIType:(nullable NSArray<SDLAppHMIType> *)appHMIType {
    [parameters sdl_setObject:appHMIType forName:SDLNameAppHMIType];
}

- (nullable NSArray<SDLAppHMIType> *)appHMIType {
    return [parameters sdl_enumsForName:SDLRPCParameterNameAppHMIType error:nil];
}

- (void)setHashID:(nullable NSString *)hashID {
    [parameters sdl_setObject:hashID forName:SDLNameHashId];
}

- (nullable NSString *)hashID {
    return [parameters sdl_objectForName:SDLRPCParameterNameHashId ofClass:NSString.class error:nil];
}

- (void)setDeviceInfo:(nullable SDLDeviceInfo *)deviceInfo {
    [parameters sdl_setObject:deviceInfo forName:SDLNameDeviceInfo];
}

- (nullable SDLDeviceInfo *)deviceInfo {
    return [parameters sdl_objectForName:SDLRPCParameterNameDeviceInfo ofClass:SDLDeviceInfo.class error:nil];
}

- (void)setAppID:(NSString *)appID {
    [parameters sdl_setObject:appID forName:SDLNameAppId];
}

- (NSString *)appID {
    NSError *error = nil;
    return [parameters sdl_objectForName:SDLRPCParameterNameAppId ofClass:NSString.class error:&error];
}

- (void)setFullAppID:(nullable NSString *)fullAppID {
    [parameters sdl_setObject:fullAppID forName:SDLNameFullAppID];
}

- (nullable NSString *)fullAppID {
    return [parameters sdl_objectForName:SDLRPCParameterNameFullAppID ofClass:NSString.class error:nil];
}

- (void)setAppInfo:(nullable SDLAppInfo *)appInfo {
    [parameters sdl_setObject:appInfo forName:SDLNameAppInfo];
}

- (nullable SDLAppInfo *)appInfo {
    return [parameters sdl_objectForName:SDLRPCParameterNameAppInfo ofClass:SDLAppInfo.class error:nil];
}

- (void)setDayColorScheme:(nullable SDLTemplateColorScheme *)dayColorScheme {
    [parameters sdl_setObject:dayColorScheme forName:SDLNameDayColorScheme];
}

- (nullable SDLTemplateColorScheme *)dayColorScheme {
    return [parameters sdl_objectForName:SDLRPCParameterNameDayColorScheme ofClass:SDLTemplateColorScheme.class error:nil];
}

- (void)setNightColorScheme:(nullable SDLTemplateColorScheme *)nightColorScheme {
    [parameters sdl_setObject:nightColorScheme forName:SDLNameNightColorScheme];
}

- (nullable SDLTemplateColorScheme *)nightColorScheme {
    return [parameters sdl_objectForName:SDLRPCParameterNameNightColorScheme ofClass:SDLTemplateColorScheme.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
