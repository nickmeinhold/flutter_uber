# flutter_uber

Access the native Uber SDK from your Flutter app.

## Setup 

### Create an Uber app 

You need a Client ID and secret, so create an app at:
https://developer.uber.com/dashboard/

### iOS 

Add the following to your Info.plist:

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

See also: [Uber iOS Tutorial](https://developer.uber.com/docs/riders/ride-requests/tutorials/api/ios)
