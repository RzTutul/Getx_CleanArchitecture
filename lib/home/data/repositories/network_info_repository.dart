

import 'package:getx_clean/home/data/data_sources/newtork_info_provider.dart';
import 'package:getx_clean/home/domain/repositories/network_info_repository.dart';

class NetworkInfoRepository implements INetworkInfoRepository {
  final INetworkInfoProvider networkInfoProvider;
  NetworkInfoRepository(this.networkInfoProvider);

  @override
  Future<bool> isConnected() {
    return networkInfoProvider.isConnected();
  }
}
