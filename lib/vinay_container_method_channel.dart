import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'vinay_container_platform_interface.dart';

/// An implementation of [VinayContainerPlatform] that uses method channels.
class MethodChannelVinayContainer extends VinayContainerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('vinay_container');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
