// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Hotflow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotFlow _$HotFlowFromJson(Map<String, dynamic> json) {
  return HotFlow(
    json['ok'],
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HotFlowToJson(HotFlow instance) => <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Datas.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['total_number'],
    json['status'] == null
        ? null
        : Status.fromJson(json['status'] as Map<String, dynamic>),
    json['max_id'],
    json['max'],
    json['max_id_type'],
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'data': instance.datas,
      'total_number': instance.totalNumber,
      'status': instance.status,
      'max_id': instance.maxId,
      'max': instance.max,
      'max_id_type': instance.maxIdType,
    };

Datas _$DatasFromJson(Map<String, dynamic> json) {
  return Datas(
    json['created_at'],
    json['id'],
    json['rootid'],
    json['rootidstr'],
    json['floor_number'],
    json['text'],
    json['disable_reply'],
    json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    json['mid'],
    json['readtimetype'],
    json['comments'],
    json['max_id'],
    json['total_number'],
    json['isLikedByMblogAuthor'] as bool,
    json['more_info_type'],
    json['bid'],
    json['source'],
    json['like_count'],
    json['liked'] as bool,
  );
}

Map<String, dynamic> _$DatasToJson(Datas instance) => <String, dynamic>{
      'created_at': instance.createdAt,
      'id': instance.id,
      'rootid': instance.rootid,
      'rootidstr': instance.rootidstr,
      'floor_number': instance.floorNumber,
      'text': instance.text,
      'disable_reply': instance.disableReply,
      'user': instance.user,
      'mid': instance.mid,
      'readtimetype': instance.readtimetype,
      'comments': instance.comments,
      'max_id': instance.maxId,
      'total_number': instance.totalNumber,
      'isLikedByMblogAuthor': instance.isLikedByMblogAuthor,
      'more_info_type': instance.moreInfoType,
      'bid': instance.bid,
      'source': instance.source,
      'like_count': instance.likeCount,
      'liked': instance.liked,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['id'],
    json['screen_name'],
    json['profile_image_url'],
    json['profile_url'],
    json['statuses_count'],
    json['verified'] as bool,
    json['verified_type'],
    json['close_blue_v'] as bool,
    json['description'],
    json['gender'],
    json['mbtype'],
    json['urank'],
    json['mbrank'],
    json['follow_me'] as bool,
    json['following'] as bool,
    json['followers_count'],
    json['follow_count'],
    json['cover_image_phone'],
    json['avatar_hd'],
    json['like'] as bool,
    json['like_me'] as bool,
    json['badge'] == null
        ? null
        : Badge.fromJson(json['badge'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'screen_name': instance.screenName,
      'profile_image_url': instance.profileImageUrl,
      'profile_url': instance.profileUrl,
      'statuses_count': instance.statusesCount,
      'verified': instance.verified,
      'verified_type': instance.verifiedType,
      'close_blue_v': instance.closeBlueV,
      'description': instance.description,
      'gender': instance.gender,
      'mbtype': instance.mbtype,
      'urank': instance.urank,
      'mbrank': instance.mbrank,
      'follow_me': instance.followMe,
      'following': instance.following,
      'followers_count': instance.followersCount,
      'follow_count': instance.followCount,
      'cover_image_phone': instance.coverImagePhone,
      'avatar_hd': instance.avatarHd,
      'like': instance.like,
      'like_me': instance.likeMe,
      'badge': instance.badge,
    };

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return Badge(
    json['bind_taobao'],
    json['unread_pool'],
    json['unread_pool_ext'],
    json['user_name_certificate'],
    json['wenda_v2'],
    json['hongbaofei_2019'],
    json['wbzy_2019'],
  );
}

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'bind_taobao': instance.bindTaobao,
      'unread_pool': instance.unreadPool,
      'unread_pool_ext': instance.unreadPoolExt,
      'user_name_certificate': instance.userNameCertificate,
      'wenda_v2': instance.wendaV2,
      'hongbaofei_2019': instance.hongbaofei2019,
      'wbzy_2019': instance.wbzy2019,
    };

Status _$StatusFromJson(Map<String, dynamic> json) {
  return Status(
    json['comment_manage_info'] == null
        ? null
        : Comment_manage_info.fromJson(
            json['comment_manage_info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'comment_manage_info': instance.commentManageInfo,
    };

Comment_manage_info _$Comment_manage_infoFromJson(Map<String, dynamic> json) {
  return Comment_manage_info(
    json['comment_permission_type'],
    json['approval_comment_type'],
  );
}

Map<String, dynamic> _$Comment_manage_infoToJson(
        Comment_manage_info instance) =>
    <String, dynamic>{
      'comment_permission_type': instance.commentPermissionType,
      'approval_comment_type': instance.approvalCommentType,
    };
