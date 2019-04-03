//  SDLDisplayCapabilities.m
//

#import "SDLDisplayCapabilities.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"
#import "SDLImageField.h"
#import "SDLScreenParams.h"
#import "SDLTextField.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLDisplayCapabilities

- (void)setDisplayType:(SDLDisplayType)displayType {
    [store sdl_setObject:displayType forName:SDLNameDisplayType];
}

- (SDLDisplayType)displayType {
    NSError *error = nil;
    return [store sdl_enumForName:SDLRPCParameterNameDisplayType error:&error];
}

- (void)setDisplayName:(nullable NSString *)displayName {
    [store sdl_setObject:displayName forName:SDLNameDisplayName];
}

- (nullable NSString *)displayName {
    return [store sdl_objectForName:SDLRPCParameterNameDisplayName ofClass:NSString.class error:nil];
}

- (void)setTextFields:(NSArray<SDLTextField *> *)textFields {
    [store sdl_setObject:textFields forName:SDLNameTextFields];
}

- (NSArray<SDLTextField *> *)textFields {
    NSError *error = nil;
    return [store sdl_objectsForName:SDLRPCParameterNameTextFields ofClass:SDLTextField.class error:&error];
}

- (void)setImageFields:(nullable NSArray<SDLImageField *> *)imageFields {
    [store sdl_setObject:imageFields forName:SDLNameImageFields];
}

- (nullable NSArray<SDLImageField *> *)imageFields {
    return [store sdl_objectsForName:SDLRPCParameterNameImageFields ofClass:SDLImageField.class error:nil];
}

- (void)setMediaClockFormats:(NSArray<SDLMediaClockFormat> *)mediaClockFormats {
    [store sdl_setObject:mediaClockFormats forName:SDLNameMediaClockFormats];
}

- (NSArray<SDLMediaClockFormat> *)mediaClockFormats {
    NSError *error = nil;
    return [store sdl_enumsForName:SDLRPCParameterNameMediaClockFormats error:&error];
}

- (void)setGraphicSupported:(NSNumber<SDLBool> *)graphicSupported {
    [store sdl_setObject:graphicSupported forName:SDLNameGraphicSupported];
}

- (NSNumber<SDLBool> *)graphicSupported {
    NSError *error = nil;
    return [store sdl_objectForName:SDLRPCParameterNameGraphicSupported ofClass:NSNumber.class error:&error];
}

- (void)setTemplatesAvailable:(nullable NSArray<NSString *> *)templatesAvailable {
    [store sdl_setObject:templatesAvailable forName:SDLNameTemplatesAvailable];
}

- (nullable NSArray<NSString *> *)templatesAvailable {
    return [store sdl_objectsForName:SDLRPCParameterNameTemplatesAvailable ofClass:NSString.class error:nil];
}

- (void)setScreenParams:(nullable SDLScreenParams *)screenParams {
    [store sdl_setObject:screenParams forName:SDLNameScreenParams];
}

- (nullable SDLScreenParams *)screenParams {
    return [store sdl_objectForName:SDLRPCParameterNameScreenParams ofClass:SDLScreenParams.class error:nil];
}

- (void)setNumCustomPresetsAvailable:(nullable NSNumber<SDLInt> *)numCustomPresetsAvailable {
    [store sdl_setObject:numCustomPresetsAvailable forName:SDLNameNumberCustomPresetsAvailable];
}

- (nullable NSNumber<SDLInt> *)numCustomPresetsAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameNumberCustomPresetsAvailable ofClass:NSNumber.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
