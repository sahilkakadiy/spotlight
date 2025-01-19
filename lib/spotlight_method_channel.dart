import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'spotlight_platform_interface.dart';

/// An implementation of [SpotlightPlatform] that uses method channels.
class MethodChannelSpotlight extends SpotlightPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('spotlight');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
