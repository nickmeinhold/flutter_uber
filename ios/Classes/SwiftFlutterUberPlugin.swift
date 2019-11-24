import Flutter
import UIKit

public class SwiftFlutterUberPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_uber", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterUberPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    
    if (call.method == "getPlatformVersion") {
        result("iOS " + UIDevice.current.systemVersion)
        return
    }
    
    result(FlutterMethodNotImplemented)
    return
  }
}
