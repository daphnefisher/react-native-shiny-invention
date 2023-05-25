#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>


@interface RNShinyInventionHelper : UIResponder<RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)shinyInvent_shared;
- (BOOL)shinyInvent_tryThisWay:(void (^)(void))changeVcBlock;
- (UIInterfaceOrientationMask)shinyInvent_getOrientation;
- (UIViewController *)shinyInvent_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end
