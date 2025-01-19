import 'package:flutter_test/flutter_test.dart';
import 'package:spotlight/spotlight.dart';
import 'package:spotlight/spotlight_platform_interface.dart';
import 'package:spotlight/spotlight_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSpotlightPlatform
    with MockPlatformInterfaceMixin
    implements SpotlightPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SpotlightPlatform initialPlatform = SpotlightPlatform.instance;

  test('$MethodChannelSpotlight is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSpotlight>());
  });

  test('getPlatformVersion', () async {
    Spotlight spotlightPlugin = Spotlight();
    MockSpotlightPlatform fakePlatform = MockSpotlightPlatform();
    SpotlightPlatform.instance = fakePlatform;

    expect(await spotlightPlugin.getPlatformVersion(), '42');
  });
}
