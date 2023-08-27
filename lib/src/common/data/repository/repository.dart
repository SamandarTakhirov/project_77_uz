import 'package:project_77_uz/src/common/constants/api_constants.dart';
import 'package:project_77_uz/src/common/data/models/ad_model.dart';
import 'package:project_77_uz/src/common/data/models/base_model.dart';
import 'package:project_77_uz/src/common/service/api_service.dart';

abstract interface class IRepository {
  Future<List<Result>> getAllAds({String? search, });
}

class FakeIRepository extends IRepository {
  @override
  Future<List<Result>> getAllAds({String? search}) async{
    return [
      Result(),
      Result(),
      Result(),
      Result(),
      Result(),
      Result(),
      Result(),
    ];
  }

}

class ImplRepository extends IRepository {
  ApiService apiService;

  ImplRepository({
    required this.apiService,
  });

  @override
  Future<List<Result>> getAllAds({String? search}) async {
    String response = await apiService.request(ApiConst.adsPath,queryParametersAll: {
      "search" : [search],
    });

    BaseModel baseModel = BaseModel.fromJson(response);
    return baseModel.results ?? [];
  }
}

