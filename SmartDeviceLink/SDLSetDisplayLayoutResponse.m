//  SDLSetDisplayLayoutResponse.m
//


#import "SDLSetDisplayLayoutResponse.h"

#import "NSMutableDictionary+Store.h"
#import "SDLButtonCapabilities.h"
#import "SDLDisplayCapabilities.h"
#import "SDLNames.h"
#import "SDLPresetBankCapabilities.h"
#import "SDLSoftButtonCapabilities.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLSetDisplayLayoutResponse

- (instancetype)init {
    if (self = [super initWithName:SDLNameSetDisplayLayout]) {
    }
    return self;
}

- (void)setDisplayCapabilities:(nullable SDLDisplayCapabilities *)displayCapabilities {
    [parameters sdl_setObject:displayCapabilities forName:SDLNameDisplayCapabilities];
}

- (nullable SDLDisplayCapabilities *)displayCapabilities {
    return [parameters sdl_objectForName:SDLRPCParameterNameDisplayCapabilities ofClass:SDLDisplayCapabilities.class error:nil];
}

- (void)setButtonCapabilities:(nullable NSArray<SDLButtonCapabilities *> *)buttonCapabilities {
    [parameters sdl_setObject:buttonCapabilities forName:SDLNameButtonCapabilities];
}

- (nullable NSArray<SDLButtonCapabilities *> *)buttonCapabilities {
    return [parameters sdl_objectsForName:SDLRPCParameterNameButtonCapabilities ofClass:SDLButtonCapabilities.class error:nil];
}

- (void)setSoftButtonCapabilities:(nullable NSArray<SDLSoftButtonCapabilities *> *)softButtonCapabilities {
    [parameters sdl_setObject:softButtonCapabilities forName:SDLNameSoftButtonCapabilities];
}

- (nullable NSArray<SDLSoftButtonCapabilities *> *)softButtonCapabilities {
    return [parameters sdl_objectsForName:SDLRPCParameterNameSoftButtonCapabilities ofClass:SDLSoftButtonCapabilities.class error:nil];
}

- (void)setPresetBankCapabilities:(nullable SDLPresetBankCapabilities *)presetBankCapabilities {
    [parameters sdl_setObject:presetBankCapabilities forName:SDLNamePresetBankCapabilities];
}

- (nullable SDLPresetBankCapabilities *)presetBankCapabilities {
    return [parameters sdl_objectForName:SDLRPCParameterNamePresetBankCapabilities ofClass:SDLPresetBankCapabilities.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
