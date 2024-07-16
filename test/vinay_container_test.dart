import 'package:flutter_test/flutter_test.dart';
import 'package:vinay_container/vinay_container.dart';
import 'package:vinay_container/vinay_container_platform_interface.dart';
import 'package:vinay_container/vinay_container_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVinayContainerPlatform
    with MockPlatformInterfaceMixin
    implements VinayContainerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VinayContainerPlatform initialPlatform = VinayContainerPlatform.instance;

  test('$MethodChannelVinayContainer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVinayContainer>());
  });

  test('getPlatformVersion', () async {
    VinayContainer vinayContainerPlugin = VinayContainer();
    MockVinayContainerPlatform fakePlatform = MockVinayContainerPlatform();
    VinayContainerPlatform.instance = fakePlatform;

    expect(await vinayContainerPlugin.getPlatformVersion(), '42');
  });
}
