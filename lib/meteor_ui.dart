
import 'dart:async';

import 'package:flutter/services.dart';

class MeteorUi {
  static const MethodChannel _channel = MethodChannel('meteor_ui');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
