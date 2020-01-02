// 用户数据获取

import '../config/API.dart';

import '../config/Authorization.dart';

import '../Json/OauthToken.dart';

import './ServiceHelper.dart';

import '../json/HomeModel.dart';

import '../config/User.dart';

import '../Json/Emotion.dart';

class ServiceManager {
  //* 获取授权登录的token数据 */
  static Future<OauthToken> getAccessToken(String code) =>
      ServiceHelper.post(API.access_token, data: {
        'client_id': Authorization.WEIBO_APP_KEY,
        'client_secret': Authorization.WEIBO_APP_SECRET,
        'grant_type': 'authorization_code',
        'code': code,
        'redirect_uri': Authorization.WEIBO_REDIRECT_URL
      }).then((json) => OauthToken.fromJson(json));

  //* 获取首页信息 */
  static Future<HomeModel> getHomeTimeLine(String token, int count, int page) =>
      ServiceHelper.get(API.home_timeline, data: {
        UserData.TOKEN_KEY: token,
        UserData.COUNT: count,
        UserData.PAGE: page
      }).then((json) => HomeModel.fromJson(json));

  //* 获取用户关注列表 */
  static Future<List<User>> getFriendships(String token, int uid) =>
      ServiceHelper.get(API.friendships,
          data: {UserData.TOKEN_KEY: token, UserData.UID: uid}).then((json) {
        List array = json['users'];
        List<User> users = [];
        for (var u in array) {
          users.add(User.fromJson(u));
        }
        return users;
      });
  //* 获取表情包 */
  static Future<List<EmotionItem>> getEmotions(String token) =>
      ServiceHelper.get(API.emotions, data: {UserData.TOKEN_KEY: token})
          .then((json) {
        List<EmotionItem> items = (json as List)
            ?.map(
              (e) => e == null
                  ? null
                  : EmotionItem.fromJson(
                      (e as Map)?.map(
                        (k, e) => MapEntry(k as String, e),
                      ),
                    ),
            )
            ?.toList();
        return items;
      });
}
