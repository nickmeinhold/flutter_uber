# flutter_uber

Access the native Uber SDK from your Flutter app.

## Setup 

### Create an Uber app 

You need a Client ID and secret, so create an app at:
https://developer.uber.com/dashboard/

### iOS 

Add the following to your Info.plist to configure the Uber SDK:

```plist
<key>UberClientID</key>
<string>[ClientID]</string>
<key>UberDisplayName</key>
<string>[App Name]</string>
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>uber</string>
    <string>uberauth</string>
</array>
<key>UberCallbackURIs</key>
<array>
    <dict>
        <key>UberCallbackURIType</key>
        <string>General</string>
        <key>URIString</key>
        <string>[Your Bundle ID Here]://oauth/consumer</string>
    </dict>
</array>
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleTypeRole</key>
        <string>Editor</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>[Your Bundle ID Here]</string>
        </array>
    </dict>
</array>
```

Add the following to `AppDelegate.swift` to make calls to the RidesAppDelegate to handle URLs:

```Swift
import UberCore
    
@available(iOS 9, *)
func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {
    let handledUberURL = UberAppDelegate.shared.application(app, open: url, sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String, annotation: options[UIApplicationOpenURLOptionsKey.annotation] as Any)

    return handledUberURL
}
    
func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
    let handledUberURL = UberAppDelegate.shared.application(application, open: url, sourceApplication: sourceApplication, annotation: annotation)

    return handledUberURL
}
```
See also: [Uber iOS Tutorial](https://developer.uber.com/docs/riders/ride-requests/tutorials/api/ios)
