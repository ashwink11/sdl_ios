//  SDLPerformInteractionResponse.m
//


#import "SDLPerformInteractionResponse.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLPerformInteractionResponse

- (instancetype)init {
    if (self = [super initWithName:SDLNamePerformInteraction]) {
    }
    return self;
}

- (void)setChoiceID:(nullable NSNumber<SDLInt> *)choiceID {
    [parameters sdl_setObject:choiceID forName:SDLNameChoiceId];
}

- (nullable NSNumber<SDLInt> *)choiceID {
    return [parameters sdl_objectForName:SDLRPCParameterNameChoiceId ofClass:NSNumber.class];
}

- (void)setManualTextEntry:(nullable NSString *)manualTextEntry {
    [parameters sdl_setObject:manualTextEntry forName:SDLNameManualTextEntry];
}

- (nullable NSString *)manualTextEntry {
    return [parameters sdl_objectForName:SDLRPCParameterNameManualTextEntry ofClass:NSString.class];
}

- (void)setTriggerSource:(nullable SDLTriggerSource)triggerSource {
    [parameters sdl_setObject:triggerSource forName:SDLNameTriggerSource];
}

- (nullable SDLTriggerSource)triggerSource {
    return [parameters sdl_enumForName:SDLRPCParameterNameTriggerSource error:nil];
}

@end
    
NS_ASSUME_NONNULL_END
