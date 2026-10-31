#import <Foundation/Foundation.h>

// iOS asks sharingd whether AirDrop is allowed to install apps.
// Returning NO makes AirDrop treat .ipa as ordinary data, so it is saved
// instead of handed to the installation service.
@interface MCProfileConnection : NSObject
- (BOOL)isAirDropAppInstallationAllowed;
@end

%hook MCProfileConnection

- (BOOL)isAirDropAppInstallationAllowed {
    return NO;
}

%end
