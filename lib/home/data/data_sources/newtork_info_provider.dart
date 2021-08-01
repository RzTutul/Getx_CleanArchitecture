

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class INetworkInfoProvider {
  Future<bool> isConnected();
}

class NetworkInfoProvider implements INetworkInfoProvider {
  final Connectivity connectivity;
  NetworkInfoProvider(this.connectivity);

  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();

    if (result == ConnectivityResult.none) {
      return false;
    }

    return true;
  }
}
