import 'package:retrofit/retrofit.dart';
import 'package:dio_http/dio_http.dart';
import 'package:vlnt_flutter/entity/api/user.dart';
import 'package:vlnt_flutter/entity/api/authorization.dart';

part 'api.g.dart';

@RestApi(baseUrl: "http://dev.vlnt.expoforum.ru/api/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("auth/login")
  Future<Authorization> signin(@Body() Map<String, dynamic> map);

  @GET("Employee")
  Future<User> getProfile(@Header("Authorization") String token);
}