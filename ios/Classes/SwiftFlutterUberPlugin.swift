import Flutter
import UIKit
import UberCore

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

    if (call.method == "login") {
        
      let storyboard : UIStoryboard? = UIStoryboard.init(name: "Main", bundle: nil);
      let flutterVC: UIViewController? = storyboard!.instantiateViewController(withIdentifier: "FlutterViewController")
        
      let loginManager = LoginManager()
      loginManager.login(requestedScopes:[.request], presentingViewController: flutterVC, completion: { accessToken, error in
        // Completion block. If accessToken is non-nil, you’re good to go
        // Otherwise, error.code corresponds to the RidesAuthenticationErrorType that occured
        if(accessToken == nil) {
            result("\(error!.description)")
        }
        result(accessToken)
      })
      return
    }

    if (call.method == "getEstimate") {
        result("5000")
        return
    }
    
    result(FlutterMethodNotImplemented)
    return
  }
}
