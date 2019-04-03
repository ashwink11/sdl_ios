//  SDLOnHashChange.m
//


#import "SDLOnHashChange.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLOnHashChange

- (instancetype)init {
    if (self = [super initWithName:SDLNameOnHashChange]) {
    }
    return self;
}

- (void)setHashID:(NSString *)hashID {
    [parameters sdl_setObject:hashID forName:SDLNameHashId];
}

- (NSString *)hashID {
    NSError *error = nil;
    return [parameters sdl_objectForName:SDLRPCParameterNameHashId ofClass:NSString.class error:&error];
}

@end

NS_ASSUME_NONNULL_END
