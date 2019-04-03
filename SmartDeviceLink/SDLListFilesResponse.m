//  SDLListFilesResponse.m
//


#import "SDLListFilesResponse.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLListFilesResponse

- (instancetype)init {
    if (self = [super initWithName:SDLNameListFiles]) {
    }
    return self;
}

- (void)setFilenames:(nullable NSArray<NSString *> *)filenames {
    [parameters sdl_setObject:filenames forName:SDLNameFilenames];
}

- (nullable NSArray<NSString *> *)filenames {
    return [parameters sdl_objectsForName:SDLRPCParameterNameFilenames ofClass:NSString.class error:nil];
}

- (void)setSpaceAvailable:(nullable NSNumber<SDLInt> *)spaceAvailable {
    [parameters sdl_setObject:spaceAvailable forName:SDLNameSpaceAvailable];
}

- (nullable NSNumber<SDLInt> *)spaceAvailable {
    return [parameters sdl_objectForName:SDLRPCParameterNameSpaceAvailable ofClass:NSNumber.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
