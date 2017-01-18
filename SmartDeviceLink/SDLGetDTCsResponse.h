//  SDLGetDTCsResponse.h
//


#import "SDLRPCResponse.h"

/**
 * SDLGetDTCsResponse is sent, when SDLGetDTCs has been called
 *
 * Since <b>SmartDeviceLink 2.0</b>
 */

NS_ASSUME_NONNULL_BEGIN

@interface SDLGetDTCsResponse : SDLRPCResponse

@property (strong) NSNumber<SDLInt> *ecuHeader;
@property (strong) NSMutableArray<NSString *> *dtc;

@end

NS_ASSUME_NONNULL_END
