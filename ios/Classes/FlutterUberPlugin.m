#import "FlutterUberPlugin.h"
#if __has_include(<flutter_uber/flutter_uber-Swift.h>)
#import <flutter_uber/flutter_uber-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_uber-Swift.h"
#endif

@implementation FlutterUberPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterUberPlugin registerWithRegistrar:registrar];
}
@end
