//  SDLDateTime.m
//

#import "SDLDateTime.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

@implementation SDLDateTime

- (instancetype)initWithHour:(UInt8)hour minute:(UInt8)minute {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.hour = @(hour);
    self.minute = @(minute);

    return self;
}

- (instancetype)initWithHour:(UInt8)hour minute:(UInt8)minute second:(UInt8)second millisecond:(UInt16)millisecond {
    self = [self initWithHour:hour minute:minute];
    if (!self) {
        return nil;
    }

    self.second = @(second);
    self.millisecond = @(millisecond);

    return self;
}

- (instancetype)initWithHour:(UInt8)hour minute:(UInt8)minute second:(UInt8)second millisecond:(UInt16)millisecond day:(UInt8)day month:(UInt8)month year:(UInt16)year {
    self = [self initWithHour:hour minute:minute second:second millisecond:millisecond];
    if (!self) {
        return nil;
    }

    self.day = @(day);
    self.month = @(month);
    self.year = @(year);

    return self;
}


- (instancetype)initWithHour:(UInt8)hour minute:(UInt8)minute second:(UInt8)second millisecond:(UInt16)millisecond day:(UInt8)day month:(UInt8)month year:(UInt16)year timezoneMinuteOffset:(UInt8)timezoneMinuteOffset timezoneHourOffset:(int)timezoneHourOffset {
    self = [self initWithHour:hour minute:minute second:second millisecond:millisecond day:day month:month year:year];
    if (!self) {
        return nil;
    }

    self.timezoneMinuteOffset = @(timezoneMinuteOffset);
    self.timezoneHourOffset = @(timezoneHourOffset);

    return self;
}

- (void)setMillisecond:(NSNumber<SDLInt> *)millisecond {
    [store sdl_setObject:millisecond forName:SDLNameMillisecond];
}

- (NSNumber<SDLInt> *)millisecond {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameMillisecond ofClass:NSNumber.class error:&error];
}

- (void)setSecond:(NSNumber<SDLInt> *)second {
    [store sdl_setObject:second forName:SDLNameSecond];
}

- (NSNumber<SDLInt> *)second {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameSecond ofClass:NSNumber.class error:&error];
}

- (void)setMinute:(NSNumber<SDLInt> *)minute {
    [store sdl_setObject:minute forName:SDLNameMinute];
}

- (NSNumber<SDLInt> *)minute {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameMinute ofClass:NSNumber.class error:&error];
}

- (void)setHour:(NSNumber<SDLInt> *)hour {
    [store sdl_setObject:hour forName:SDLNameHour];
}

- (NSNumber<SDLInt> *)hour {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameHour ofClass:NSNumber.class error:&error];
}

- (void)setDay:(NSNumber<SDLInt> *)day {
    [store sdl_setObject:day forName:SDLNameDay];
}

- (NSNumber<SDLInt> *)day {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameDay ofClass:NSNumber.class error:&error];
}

- (void)setMonth:(NSNumber<SDLInt> *)month {
    [store sdl_setObject:month forName:SDLNameMonth];
}

- (NSNumber<SDLInt> *)month {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameMonth ofClass:NSNumber.class error:&error];
}

- (void)setYear:(NSNumber<SDLInt> *)year {
    [store sdl_setObject:year forName:SDLNameYear];
}

- (NSNumber<SDLInt> *)year {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameYear ofClass:NSNumber.class error:&error];
}

- (void)setTimezoneMinuteOffset:(NSNumber<SDLInt> *)timezoneMinuteOffset {
    [store sdl_setObject:timezoneMinuteOffset forName:SDLNameTimezoneMinuteOffset];
}

- (NSNumber<SDLInt> *)timezoneMinuteOffset {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameTimezoneMinuteOffset ofClass:NSNumber.class error:&error];
}

- (void)setTimezoneHourOffset:(NSNumber<SDLInt> *)timezoneHourOffset {
    [store sdl_setObject:timezoneHourOffset forName:SDLNameTimezoneHourOffset];
}

- (NSNumber<SDLInt> *)timezoneHourOffset {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameTimezoneHourOffset ofClass:NSNumber.class error:&error];
}

@end
