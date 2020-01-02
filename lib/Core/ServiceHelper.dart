// 回调数据解析

import 'package:dio/dio.dart';

import '../config/API.dart';

class ServiceHelper {
  static Dio dio = Dio(
    BaseOptions(
        connectTimeout: 30000,
        receiveTimeout: 30000,
        baseUrl: API.baseUrl,
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          // 'Accept':
          //     'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
          // 'Accept-Encoding': '	gzip, deflate, br',
          // 'Accept-Language':
          //     'zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2',
          // 'Cache-Control': 'max-age=0',
          // 'Connection': 'keep-alive',
          // 'DNT': '1',
          // 'Host': 'm.weibo.cn',
          // 'TE': 'Trailers',
          // 'Upgrade-Insecure-Requests': '1',
          'User-Agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0',
        }
        // contentType:"application/x-www-form-urlencoded; charset=utf-8; application/json"
        // contentType: ContentType.parse(
        //     "application/x-www-form-urlencoded; charset=utf-8; application/json").toString(),
        ),
  );

  static Future<T> post<T>(
    String path, {
    data,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onSendProgress,
  }) {
    return dio
        .post<T>(path,
            options: options,
            data: data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress)
        .then((value) => value.data);
  }

  static Future<T> get<T>(String path,
      {data, Options options, CancelToken cancelToken}) {
    return dio
        .get(path,
            options: options, queryParameters: data, cancelToken: cancelToken)
        .then((value) => value.data);
  }
}
