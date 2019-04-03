//  SDLOnCommand.m
//

#import "SDLOnCommand.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLOnCommand

- (instancetype)init {
    if (self = [super initWithName:SDLNameOnCommand]) {
    }
    return self;
}

- (void)setCmdID:(NSNumber<SDLInt> *)cmdID {
    [parameters sdl_setObject:cmdID forName:SDLNameCommandId];
}

- (NSNumber<SDLInt> *)cmdID {
    NSError *error = nil;
    return [parameters sdl_objectForName:SDLRPCParameterNameCommandId ofClass:NSNumber.class error:&error];
}

- (void)setTriggerSource:(SDLTriggerSource)triggerSource {
    [parameters sdl_setObject:triggerSource forName:SDLNameTriggerSource];
}

- (SDLTriggerSource)triggerSource {
    NSError *error = nil;
    return [parameters sdl_enumForName:SDLRPCParameterNameTriggerSource error:&error];
}

@end

NS_ASSUME_NONNULL_END
