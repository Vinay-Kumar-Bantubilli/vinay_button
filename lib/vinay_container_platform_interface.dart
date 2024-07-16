import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'vinay_container_method_channel.dart';

abstract class VinayContainerPlatform extends PlatformInterface {
  /// Constructs a VinayContainerPlatform.
  VinayContainerPlatform() : super(token: _token);

  static final Object _token = Object();

  static VinayContainerPlatform _instance = MethodChannelVinayContainer();

  /// The default instance of [VinayContainerPlatform] to use.
  ///
  /// Defaults to [MethodChannelVinayContainer].
  static VinayContainerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VinayContainerPlatform] when
  /// they register themselves.
  static set instance(VinayContainerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
