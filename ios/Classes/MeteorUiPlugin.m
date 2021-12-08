#import "MeteorUiPlugin.h"
#if __has_include(<meteor_ui/meteor_ui-Swift.h>)
#import <meteor_ui/meteor_ui-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "meteor_ui-Swift.h"
#endif

@implementation MeteorUiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMeteorUiPlugin registerWithRegistrar:registrar];
}
@end
