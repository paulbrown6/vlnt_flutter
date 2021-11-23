// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://dev.vlnt.expoforum.ru/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Authorization> signin(map) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(map);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Map<String, Authorization>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'auth/login',
                queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Authorization.fromJson(_result.data!);
    return value;
  }

  @override
  Future<User> getProfile(token) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': "Bearer ${token}"};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Map<String, User>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'Employee',
                queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = User.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<News>> getNewsAll(map) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      'Connection': "keep-alive",
      'Accept': "application/json, text/plain, */*",
      'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDQ3LCJlbWFpbCI6InBhdWw2YnJvd242QGdtYWlsLmNvbSIsImlhdCI6MTYzNzEzMDY1MCwiZXhwIjoxNjM3MTQxNDUwfQ.p85vxPzAI6DQ7boy4_7FCO0tO-Wwsx2xoxH8Qed2fL8",
      'LANG': "RU"
    };
    final _data = map;
    debugPrint(_data.toString());
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<News>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, 'news/list',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)))
    .whenComplete(() {
    debugPrint("complete:");
    }).catchError((onError) {
    debugPrint("error:${onError.toString()}");
    });
    debugPrint(_result.toString());
    var value = _result.data!
        .map((dynamic i) => News.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
