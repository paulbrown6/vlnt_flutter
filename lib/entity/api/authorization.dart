import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Authorization {
  String accessToken;
  String expirationAccessTime;
  String refreshToken;
  String expirationRefreshTime;

  Authorization(
      {required this.accessToken,
      required this.expirationAccessTime,
      required this.refreshToken,
      required this.expirationRefreshTime});

  factory Authorization.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorizationToJson(this);
}

Authorization _$AuthorizationFromJson(Map<String, dynamic> json) {
  return Authorization(
    expirationAccessTime: json['expiration_access_time'].toString(),
    refreshToken: json['refresh_token'].toString(),
    expirationRefreshTime: json['expiration_refresh_time'].toString(),
    accessToken: json['access_token'].toString(),
  );
}

Map<String, dynamic> _$AuthorizationToJson(Authorization instance) => <String, dynamic>{
      'expiration_access_time': instance.expirationAccessTime,
      'refresh_token': instance.refreshToken,
      'expiration_refresh_time': instance.expirationRefreshTime,
      'access_token': instance.accessToken,
    };
