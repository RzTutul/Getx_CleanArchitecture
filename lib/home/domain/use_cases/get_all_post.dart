import 'package:getx_clean/home/domain/entities/post_response.dart';
import 'package:getx_clean/home/domain/repositories/network_info_repository.dart';
import 'package:getx_clean/home/domain/repositories/post_repository.dart';
import 'package:getx_clean/home/domain/use_cases/base_use_case.dart';

class GetAllPost implements BaseUseCase<List<PostResponse>?, NoParams> {
  IPostRepository iPostRepository;
  INetworkInfoRepository networkInfoRepository;

  GetAllPost(this.iPostRepository, this.networkInfoRepository);

  @override
  Future<List<PostResponse>?> call(NoParams parameter) async {
    if (await networkInfoRepository.isConnected()) {
      return await iPostRepository.getAllPost();
    }
  }
}
