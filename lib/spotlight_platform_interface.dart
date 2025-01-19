import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'spotlight_method_channel.dart';

abstract class SpotlightPlatform extends PlatformInterface {
  /// Constructs a SpotlightPlatform.
  SpotlightPlatform() : super(token: _token);

  static final Object _token = Object();

  static SpotlightPlatform _instance = MethodChannelSpotlight();

  /// The default instance of [SpotlightPlatform] to use.
  ///
  /// Defaults to [MethodChannelSpotlight].
  static SpotlightPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SpotlightPlatform] when
  /// they register themselves.
  static set instance(SpotlightPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
