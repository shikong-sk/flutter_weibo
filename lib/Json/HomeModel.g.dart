// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return HomeModel(
    (json['statuses'] as List)
        ?.map((e) =>
            e == null ? null : Statusess.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['advertises'] as List,
    json['ad'] as List,
    json['hasvisible'] as bool,
    json['previous_cursor'] as int,
    json['next_cursor'] as int,
    json['previous_cursor_str'] as String,
    json['next_cursor_str'] as String,
    json['total_number'] as int,
    json['interval'] as int,
    json['uve_blank'] as int,
    json['since_id'] as int,
    json['since_id_str'] as String,
    json['max_id'] as int,
    json['max_id_str'] as String,
    json['has_unread'] as int,
  );
}

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'statuses': instance.statusess,
      'advertises': instance.advertises,
      'ad': instance.ad,
      'hasvisible': instance.hasvisible,
      'previous_cursor': instance.previousCursor,
      'next_cursor': instance.nextCursor,
      'previous_cursor_str': instance.previousCursorStr,
      'next_cursor_str': instance.nextCursorStr,
      'total_number': instance.totalNumber,
      'interval': instance.interval,
      'uve_blank': instance.uveBlank,
      'since_id': instance.sinceId,
      'since_id_str': instance.sinceIdStr,
      'max_id': instance.maxId,
      'max_id_str': instance.maxIdStr,
      'has_unread': instance.hasUnread,
    };

Statusess _$StatusessFromJson(Map<String, dynamic> json) {
  return Statusess(
    json['visible'] == null
        ? null
        : Visible.fromJson(json['visible'] as Map<String, dynamic>),
    json['created_at'] as String,
    json['id'] as int,
    json['idstr'] as String,
    json['mid'] as String,
    json['can_edit'] as bool,
    json['show_additional_indication'] as int,
    json['text'] as String,
    json['textLength'] as int,
    json['source_allowclick'] as int,
    json['source_type'] as int,
    json['source'] as String,
    json['favorited'] as bool,
    json['truncated'] as bool,
    json['in_reply_to_status_id'] as String,
    json['in_reply_to_user_id'] as String,
    json['in_reply_to_screen_name'] as String,
    (json['pic_urls'] as List)
        ?.map((e) =>
            e == null ? null : Pic_urls.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['thumbnail_pic'] as String,
    json['bmiddle_pic'] as String,
    json['original_pic'] as String,
    json['is_paid'] as bool,
    json['mblog_vip_type'] as int,
    json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    (json['annotations'] as List)
        ?.map((e) =>
            e == null ? null : Annotations.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['reposts_count'] as int,
    json['comments_count'] as int,
    json['attitudes_count'] as int,
    json['pending_approval_count'] as int,
    json['isLongText'] as bool,
    json['reward_exhibition_type'] as int,
    json['hide_flag'] as int,
    json['mlevel'] as int,
    json['biz_feature'] as int,
    json['hasActionTypeCard'] as int,
    json['darwin_tags'] as List,
    json['hot_weibo_tags'] as List,
    json['text_tag_tips'] as List,
    json['mblogtype'] as int,
    json['rid'] as String,
    json['userType'] as int,
    json['more_info_type'] as int,
    json['number_display_strategy'] == null
        ? null
        : Number_display_strategy.fromJson(
            json['number_display_strategy'] as Map<String, dynamic>),
    json['positive_recom_flag'] as int,
    json['enable_comment_guide'] as bool,
    json['content_auth'] as int,
    json['gif_ids'] as String,
    json['is_show_bulletin'] as int,
    json['comment_manage_info'] == null
        ? null
        : Comment_manage_info.fromJson(
            json['comment_manage_info'] as Map<String, dynamic>),
    json['pic_num'] as int,
    json['alchemy_params'] == null
        ? null
        : Alchemy_params.fromJson(
            json['alchemy_params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StatusessToJson(Statusess instance) => <String, dynamic>{
      'visible': instance.visible,
      'created_at': instance.createdAt,
      'id': instance.id,
      'idstr': instance.idstr,
      'mid': instance.mid,
      'can_edit': instance.canEdit,
      'show_additional_indication': instance.showAdditionalIndication,
      'text': instance.text,
      'textLength': instance.textLength,
      'source_allowclick': instance.sourceAllowclick,
      'source_type': instance.sourceType,
      'source': instance.source,
      'favorited': instance.favorited,
      'truncated': instance.truncated,
      'in_reply_to_status_id': instance.inReplyToStatusId,
      'in_reply_to_user_id': instance.inReplyToUserId,
      'in_reply_to_screen_name': instance.inReplyToScreenName,
      'pic_urls': instance.picUrls,
      'thumbnail_pic': instance.thumbnailPic,
      'bmiddle_pic': instance.bmiddlePic,
      'original_pic': instance.originalPic,
      'is_paid': instance.isPaid,
      'mblog_vip_type': instance.mblogVipType,
      'user': instance.user,
      'annotations': instance.annotations,
      'reposts_count': instance.repostsCount,
      'comments_count': instance.commentsCount,
      'attitudes_count': instance.attitudesCount,
      'pending_approval_count': instance.pendingApprovalCount,
      'isLongText': instance.isLongText,
      'reward_exhibition_type': instance.rewardExhibitionType,
      'hide_flag': instance.hideFlag,
      'mlevel': instance.mlevel,
      'biz_feature': instance.bizFeature,
      'hasActionTypeCard': instance.hasActionTypeCard,
      'darwin_tags': instance.darwinTags,
      'hot_weibo_tags': instance.hotWeiboTags,
      'text_tag_tips': instance.textTagTips,
      'mblogtype': instance.mblogtype,
      'rid': instance.rid,
      'userType': instance.userType,
      'more_info_type': instance.moreInfoType,
      'number_display_strategy': instance.numberDisplayStrategy,
      'positive_recom_flag': instance.positiveRecomFlag,
      'enable_comment_guide': instance.enableCommentGuide,
      'content_auth': instance.contentAuth,
      'gif_ids': instance.gifIds,
      'is_show_bulletin': instance.isShowBulletin,
      'comment_manage_info': instance.commentManageInfo,
      'pic_num': instance.picNum,
      'alchemy_params': instance.alchemyParams,
    };

Visible _$VisibleFromJson(Map<String, dynamic> json) {
  return Visible(
    json['type'] as int,
    json['list_id'] as int,
  );
}

Map<String, dynamic> _$VisibleToJson(Visible instance) => <String, dynamic>{
      'type': instance.type,
      'list_id': instance.listId,
    };

Pic_urls _$Pic_urlsFromJson(Map<String, dynamic> json) {
  return Pic_urls(
    json['thumbnail_pic'] as String,
  );
}

Map<String, dynamic> _$Pic_urlsToJson(Pic_urls instance) => <String, dynamic>{
      'thumbnail_pic': instance.thumbnailPic,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['id'] as int,
    json['idstr'] as String,
    json['class'] as int,
    json['screen_name'] as String,
    json['name'] as String,
    json['province'] as String,
    json['city'] as String,
    json['location'] as String,
    json['description'] as String,
    json['url'] as String,
    json['profile_image_url'] as String,
    json['cover_image'] as String,
    json['cover_image_phone'] as String,
    json['profile_url'] as String,
    json['domain'] as String,
    json['weihao'] as String,
    json['gender'] as String,
    json['followers_count'] as int,
    json['friends_count'] as int,
    json['pagefriends_count'] as int,
    json['statuses_count'] as int,
    json['video_status_count'] as int,
    json['favourites_count'] as int,
    json['created_at'] as String,
    json['following'] as bool,
    json['allow_all_act_msg'] as bool,
    json['geo_enabled'] as bool,
    json['verified'] as bool,
    json['verified_type'] as int,
    json['remark'] as String,
    json['insecurity'] == null
        ? null
        : Insecurity.fromJson(json['insecurity'] as Map<String, dynamic>),
    json['ptype'] as int,
    json['allow_all_comment'] as bool,
    json['avatar_large'] as String,
    json['avatar_hd'] as String,
    json['verified_reason'] as String,
    json['verified_trade'] as String,
    json['verified_reason_url'] as String,
    json['verified_source'] as String,
    json['verified_source_url'] as String,
    json['verified_state'] as int,
    json['verified_level'] as int,
    json['verified_type_ext'] as int,
    json['pay_remind'] as int,
    json['pay_date'] as String,
    json['has_service_tel'] as bool,
    json['verified_reason_modified'] as String,
    json['verified_contact_name'] as String,
    json['verified_contact_email'] as String,
    json['verified_contact_mobile'] as String,
    json['follow_me'] as bool,
    json['like'] as bool,
    json['like_me'] as bool,
    json['online_status'] as int,
    json['bi_followers_count'] as int,
    json['lang'] as String,
    json['star'] as int,
    json['mbtype'] as int,
    json['mbrank'] as int,
    json['block_word'] as int,
    json['block_app'] as int,
    json['credit_score'] as int,
    json['user_ability'] as int,
    json['urank'] as int,
    json['story_read_state'] as int,
    json['vclub_member'] as int,
    json['is_teenager'] as int,
    json['is_guardian'] as int,
    json['is_teenager_list'] as int,
    json['special_follow'] as bool,
    json['tab_manage'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'idstr': instance.idstr,
      'class': instance.classs,
      'screen_name': instance.screenName,
      'name': instance.name,
      'province': instance.province,
      'city': instance.city,
      'location': instance.location,
      'description': instance.description,
      'url': instance.url,
      'profile_image_url': instance.profileImageUrl,
      'cover_image': instance.coverImage,
      'cover_image_phone': instance.coverImagePhone,
      'profile_url': instance.profileUrl,
      'domain': instance.domain,
      'weihao': instance.weihao,
      'gender': instance.gender,
      'followers_count': instance.followersCount,
      'friends_count': instance.friendsCount,
      'pagefriends_count': instance.pagefriendsCount,
      'statuses_count': instance.statusesCount,
      'video_status_count': instance.videoStatusCount,
      'favourites_count': instance.favouritesCount,
      'created_at': instance.createdAt,
      'following': instance.following,
      'allow_all_act_msg': instance.allowAllActMsg,
      'geo_enabled': instance.geoEnabled,
      'verified': instance.verified,
      'verified_type': instance.verifiedType,
      'remark': instance.remark,
      'insecurity': instance.insecurity,
      'ptype': instance.ptype,
      'allow_all_comment': instance.allowAllComment,
      'avatar_large': instance.avatarLarge,
      'avatar_hd': instance.avatarHd,
      'verified_reason': instance.verifiedReason,
      'verified_trade': instance.verifiedTrade,
      'verified_reason_url': instance.verifiedReasonUrl,
      'verified_source': instance.verifiedSource,
      'verified_source_url': instance.verifiedSourceUrl,
      'verified_state': instance.verifiedState,
      'verified_level': instance.verifiedLevel,
      'verified_type_ext': instance.verifiedTypeExt,
      'pay_remind': instance.payRemind,
      'pay_date': instance.payDate,
      'has_service_tel': instance.hasServiceTel,
      'verified_reason_modified': instance.verifiedReasonModified,
      'verified_contact_name': instance.verifiedContactName,
      'verified_contact_email': instance.verifiedContactEmail,
      'verified_contact_mobile': instance.verifiedContactMobile,
      'follow_me': instance.followMe,
      'like': instance.like,
      'like_me': instance.likeMe,
      'online_status': instance.onlineStatus,
      'bi_followers_count': instance.biFollowersCount,
      'lang': instance.lang,
      'star': instance.star,
      'mbtype': instance.mbtype,
      'mbrank': instance.mbrank,
      'block_word': instance.blockWord,
      'block_app': instance.blockApp,
      'credit_score': instance.creditScore,
      'user_ability': instance.userAbility,
      'urank': instance.urank,
      'story_read_state': instance.storyReadState,
      'vclub_member': instance.vclubMember,
      'is_teenager': instance.isTeenager,
      'is_guardian': instance.isGuardian,
      'is_teenager_list': instance.isTeenagerList,
      'special_follow': instance.specialFollow,
      'tab_manage': instance.tabManage,
    };

Insecurity _$InsecurityFromJson(Map<String, dynamic> json) {
  return Insecurity(
    json['sexual_content'] as bool,
  );
}

Map<String, dynamic> _$InsecurityToJson(Insecurity instance) =>
    <String, dynamic>{
      'sexual_content': instance.sexualContent,
    };

Annotations _$AnnotationsFromJson(Map<String, dynamic> json) {
  return Annotations(
    json['uid'] as String,
    json['with_video'] as bool,
    json['item_id'] as String,
    json['time'] as int,
    json['type'] as String,
  );
}

Map<String, dynamic> _$AnnotationsToJson(Annotations instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'with_video': instance.withVideo,
      'item_id': instance.itemId,
      'time': instance.time,
      'type': instance.type,
    };

Number_display_strategy _$Number_display_strategyFromJson(
    Map<String, dynamic> json) {
  return Number_display_strategy(
    json['apply_scenario_flag'] as int,
    json['display_text_min_number'] as int,
    json['display_text'] as String,
  );
}

Map<String, dynamic> _$Number_display_strategyToJson(
        Number_display_strategy instance) =>
    <String, dynamic>{
      'apply_scenario_flag': instance.applyScenarioFlag,
      'display_text_min_number': instance.displayTextMinNumber,
      'display_text': instance.displayText,
    };

Comment_manage_info _$Comment_manage_infoFromJson(Map<String, dynamic> json) {
  return Comment_manage_info(
    json['comment_permission_type'] as int,
    json['approval_comment_type'] as int,
  );
}

Map<String, dynamic> _$Comment_manage_infoToJson(
        Comment_manage_info instance) =>
    <String, dynamic>{
      'comment_permission_type': instance.commentPermissionType,
      'approval_comment_type': instance.approvalCommentType,
    };

Alchemy_params _$Alchemy_paramsFromJson(Map<String, dynamic> json) {
  return Alchemy_params(
    json['comment_guide_type'] as int,
  );
}

Map<String, dynamic> _$Alchemy_paramsToJson(Alchemy_params instance) =>
    <String, dynamic>{
      'comment_guide_type': instance.commentGuideType,
    };
