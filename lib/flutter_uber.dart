import 'dart:async';

import 'package:flutter/services.dart';

class FlutterUber {
  static const MethodChannel _channel = const MethodChannel('flutter_uber');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get login async {
    final String estimate = await _channel.invokeMethod('login');
    return estimate;
  }

  static Future<String> get estimate async {
    final String estimate = await _channel.invokeMethod('getEstimate');
    return estimate;
  }
}
