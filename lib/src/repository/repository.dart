import 'package:oson_apteka/src/app_provider/app_provider.dart';
import 'package:oson_apteka/src/http_result/http_result.dart';

class Repository {
  final AppProvider _provider = AppProvider();

  Future<HttpResult> getCategory() => _provider.getCategory();

  Future<HttpResult> getSales() => _provider.getSales();

  Future<HttpResult> getDrugs() => _provider.getDrugs();

  Future<HttpResult> getChoice() => _provider.getChoice();

  Future<HttpResult> getRegion() => _provider.getRegion();

  Future<HttpResult> getStory() => _provider.getStory();

  Future<HttpResult> sendLogin(String number) => _provider.getLogin(number);

  Future<HttpResult> getSearch(String number) => _provider.getSearch();
}
