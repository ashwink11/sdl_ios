//  SDLPerformAudioPassThru.m
//


#import "SDLPerformAudioPassThru.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"
#import "SDLTTSChunk.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLPerformAudioPassThru

- (instancetype)init {
    if (self = [super initWithName:SDLNamePerformAudioPassThru]) {
    }
    return self;
}

- (instancetype)initWithInitialPrompt:(nullable NSString *)initialPrompt audioPassThruDisplayText1:(nullable NSString *)audioPassThruDisplayText1 audioPassThruDisplayText2:(nullable NSString *)audioPassThruDisplayText2 samplingRate:(SDLSamplingRate)samplingRate bitsPerSample:(SDLBitsPerSample)bitsPerSample audioType:(SDLAudioType)audioType maxDuration:(UInt32)maxDuration muteAudio:(BOOL)muteAudio {
    return [self initWithInitialPrompt:initialPrompt audioPassThruDisplayText1:audioPassThruDisplayText1 audioPassThruDisplayText2:audioPassThruDisplayText2 samplingRate:samplingRate bitsPerSample:bitsPerSample audioType:audioType maxDuration:maxDuration muteAudio:muteAudio audioDataHandler:nil];
}

- (instancetype)initWithInitialPrompt:(nullable NSString *)initialPrompt audioPassThruDisplayText1:(nullable NSString *)audioPassThruDisplayText1 audioPassThruDisplayText2:(nullable NSString *)audioPassThruDisplayText2 samplingRate:(SDLSamplingRate)samplingRate bitsPerSample:(SDLBitsPerSample)bitsPerSample audioType:(SDLAudioType)audioType maxDuration:(UInt32)maxDuration muteAudio:(BOOL)muteAudio audioDataHandler:(nullable SDLAudioPassThruHandler)audioDataHandler {
    self = [self initWithSamplingRate:samplingRate bitsPerSample:bitsPerSample audioType:audioType maxDuration:maxDuration audioDataHandler:audioDataHandler];
    if (!self) {
        return nil;
    }

    self.initialPrompt = [SDLTTSChunk textChunksFromString:initialPrompt];
    self.audioPassThruDisplayText1 = audioPassThruDisplayText1;
    self.audioPassThruDisplayText2 = audioPassThruDisplayText2;
    self.muteAudio = @(muteAudio);

    return self;
}

- (instancetype)initWithSamplingRate:(SDLSamplingRate)samplingRate bitsPerSample:(SDLBitsPerSample)bitsPerSample audioType:(SDLAudioType)audioType maxDuration:(UInt32)maxDuration {
    return [self initWithSamplingRate:samplingRate bitsPerSample:bitsPerSample audioType:audioType maxDuration:maxDuration audioDataHandler:nil];
}
    
- (instancetype)initWithSamplingRate:(SDLSamplingRate)samplingRate bitsPerSample:(SDLBitsPerSample)bitsPerSample audioType:(SDLAudioType)audioType maxDuration:(UInt32)maxDuration audioDataHandler:(nullable SDLAudioPassThruHandler)audioDataHandler {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.samplingRate = samplingRate;
    self.bitsPerSample = bitsPerSample;
    self.audioType = audioType;
    self.maxDuration = @(maxDuration);
    self.audioDataHandler = audioDataHandler;
    
    return self;
}
    

- (void)setInitialPrompt:(nullable NSArray<SDLTTSChunk *> *)initialPrompt {
    [parameters sdl_setObject:initialPrompt forName:SDLNameInitialPrompt];
}

- (nullable NSArray<SDLTTSChunk *> *)initialPrompt {
    return [parameters sdl_objectsForName:SDLNameInitialPrompt ofClass:SDLTTSChunk.class];
}

- (void)setAudioPassThruDisplayText1:(nullable NSString *)audioPassThruDisplayText1 {
    [parameters sdl_setObject:audioPassThruDisplayText1 forName:SDLNameAudioPassThruDisplayText1];
}

- (nullable NSString *)audioPassThruDisplayText1 {
    return [parameters sdl_objectForName:SDLRPCParameterNameAudioPassThruDisplayText1 ofClass:NSString.class];
}

- (void)setAudioPassThruDisplayText2:(nullable NSString *)audioPassThruDisplayText2 {
    [parameters sdl_setObject:audioPassThruDisplayText2 forName:SDLNameAudioPassThruDisplayText2];
}

- (nullable NSString *)audioPassThruDisplayText2 {
    return [parameters sdl_objectForName:SDLRPCParameterNameAudioPassThruDisplayText2 ofClass:NSString.class];
}

- (void)setSamplingRate:(SDLSamplingRate)samplingRate {
    [parameters sdl_setObject:samplingRate forName:SDLNameSamplingRate];
}

- (SDLSamplingRate)samplingRate {
    NSError *error;
    return [parameters sdl_enumForName:SDLRPCParameterNameSamplingRate error:&error];
}

- (void)setMaxDuration:(NSNumber<SDLInt> *)maxDuration {
    [parameters sdl_setObject:maxDuration forName:SDLNameMaxDuration];
}

- (NSNumber<SDLInt> *)maxDuration {
    NSError *error;
    return [parameters sdl_objectForName:SDLRPCParameterNameMaxDuration ofClass:NSNumber.class error:&error];
}

- (void)setBitsPerSample:(SDLBitsPerSample)bitsPerSample {
    [parameters sdl_setObject:bitsPerSample forName:SDLNameBitsPerSample];
}

- (SDLBitsPerSample)bitsPerSample {
    NSError *error;
    return [parameters sdl_enumForName:SDLRPCParameterNameBitsPerSample error:&error];
}

- (void)setAudioType:(SDLAudioType)audioType {
    [parameters sdl_setObject:audioType forName:SDLNameAudioType];
}

- (SDLAudioType)audioType {
    NSError *error;
    return [parameters sdl_enumForName:SDLRPCParameterNameAudioType error:&error];
}

- (void)setMuteAudio:(nullable NSNumber<SDLBool> *)muteAudio {
    [parameters sdl_setObject:muteAudio forName:SDLNameMuteAudio];
}

- (nullable NSNumber<SDLBool> *)muteAudio {
    return [parameters sdl_objectForName:SDLRPCParameterNameMuteAudio ofClass:NSNumber.class];
}

@end

NS_ASSUME_NONNULL_END
