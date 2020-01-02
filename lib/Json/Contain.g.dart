// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Contain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contain _$ContainFromJson(Map<String, dynamic> json) {
  return Contain(
    json['ok'],
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContainToJson(Contain instance) => <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['cardlistInfo'] == null
        ? null
        : CardlistInfo.fromJson(json['cardlistInfo'] as Map<String, dynamic>),
    (json['cards'] as List)
        ?.map(
            (e) => e == null ? null : Cards.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['scheme'],
    json['showAppTips'],
    json['openApp'],
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'cardlistInfo': instance.cardlistInfo,
      'cards': instance.cards,
      'scheme': instance.scheme,
      'showAppTips': instance.showAppTips,
      'openApp': instance.openApp,
    };

CardlistInfo _$CardlistInfoFromJson(Map<String, dynamic> json) {
  return CardlistInfo(
    json['v_p'],
    json['statistics_from'],
    json['containerid'],
    json['title_top'],
    json['show_style'],
    json['total'],
    json['can_shared'],
    json['since_id'],
    json['cardlist_title'],
    json['desc'],
    (json['cardlist_head_cards'] as List)
        ?.map((e) => e == null
            ? null
            : Cardlist_head_cards.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CardlistInfoToJson(CardlistInfo instance) =>
    <String, dynamic>{
      'v_p': instance.vP,
      'statistics_from': instance.statisticsFrom,
      'containerid': instance.containerid,
      'title_top': instance.titleTop,
      'show_style': instance.showStyle,
      'total': instance.total,
      'can_shared': instance.canShared,
      'since_id': instance.sinceId,
      'cardlist_title': instance.cardlistTitle,
      'desc': instance.desc,
      'cardlist_head_cards': instance.cardlistHeadCards,
    };

Cardlist_head_cards _$Cardlist_head_cardsFromJson(Map<String, dynamic> json) {
  return Cardlist_head_cards();
}

Map<String, dynamic> _$Cardlist_head_cardsToJson(
        Cardlist_head_cards instance) =>
    <String, dynamic>{};

Cards _$CardsFromJson(Map<String, dynamic> json) {
  return Cards(
    json['card_type'],
    json['itemid'],
    json['scheme'],
    json['weibo_need'],
    json['mblog'] == null
        ? null
        : Mblog.fromJson(json['mblog'] as Map<String, dynamic>),
    json['show_type'],
    (json['mblog_buttons'] as List)
        ?.map((e) => e == null
            ? null
            : Mblog_buttons.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['hot_request_id'],
  );
}

Map<String, dynamic> _$CardsToJson(Cards instance) => <String, dynamic>{
      'card_type': instance.cardType,
      'itemid': instance.itemid,
      'scheme': instance.scheme,
      'weibo_need': instance.weiboNeed,
      'mblog': instance.mblog,
      'show_type': instance.showType,
      'mblog_buttons': instance.mblogButtons,
      'hot_request_id': instance.hotRequestId,
    };

Mblog _$MblogFromJson(Map<String, dynamic> json) {
  return Mblog(
    json['visible'] == null
        ? null
        : Visible.fromJson(json['visible'] as Map<String, dynamic>),
    json['created_at'],
    json['id'],
    json['idstr'],
    json['mid'],
    json['edit_count'],
    json['can_edit'] as bool,
    json['edit_at'],
    json['version'],
    json['show_additional_indication'],
    json['text'],
    json['textLength'],
    json['source'],
    json['favorited'] as bool,
    json['pic_types'],
    json['thumbnail_pic'],
    json['bmiddle_pic'],
    json['original_pic'],
    json['is_paid'] as bool,
    json['mblog_vip_type'],
    json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    json['picStatus'],
    json['reposts_count'],
    json['comments_count'],
    json['attitudes_count'],
    json['pending_approval_count'],
    json['isLongText'] as bool,
    json['reward_exhibition_type'],
    json['reward_scheme'],
    json['hide_flag'],
    json['mblogtype'],
    json['rid'],
    json['more_info_type'],
    json['extern_safe'],
    json['number_display_strategy'] == null
        ? null
        : Number_display_strategy.fromJson(
            json['number_display_strategy'] as Map<String, dynamic>),
    json['content_auth'],
    json['pic_num'],
    json['weibo_position'],
    json['show_attitude_bar'],
    (json['buttons'] as List)
        ?.map((e) =>
            e == null ? null : Buttons.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['from_cateid'],
    (json['mblog_buttons'] as List)
        ?.map((e) => e == null
            ? null
            : Mblog_buttons.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['bid'],
    (json['pics'] as List)
        ?.map(
            (e) => e == null ? null : Pics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MblogToJson(Mblog instance) => <String, dynamic>{
      'visible': instance.visible,
      'created_at': instance.createdAt,
      'id': instance.id,
      'idstr': instance.idstr,
      'mid': instance.mid,
      'edit_count': instance.editCount,
      'can_edit': instance.canEdit,
      'edit_at': instance.editAt,
      'version': instance.version,
      'show_additional_indication': instance.showAdditionalIndication,
      'text': instance.text,
      'textLength': instance.textLength,
      'source': instance.source,
      'favorited': instance.favorited,
      'pic_types': instance.picTypes,
      'thumbnail_pic': instance.thumbnailPic,
      'bmiddle_pic': instance.bmiddlePic,
      'original_pic': instance.originalPic,
      'is_paid': instance.isPaid,
      'mblog_vip_type': instance.mblogVipType,
      'user': instance.user,
      'picStatus': instance.picStatus,
      'reposts_count': instance.repostsCount,
      'comments_count': instance.commentsCount,
      'attitudes_count': instance.attitudesCount,
      'pending_approval_count': instance.pendingApprovalCount,
      'isLongText': instance.isLongText,
      'reward_exhibition_type': instance.rewardExhibitionType,
      'reward_scheme': instance.rewardScheme,
      'hide_flag': instance.hideFlag,
      'mblogtype': instance.mblogtype,
      'rid': instance.rid,
      'more_info_type': instance.moreInfoType,
      'extern_safe': instance.externSafe,
      'number_display_strategy': instance.numberDisplayStrategy,
      'content_auth': instance.contentAuth,
      'pic_num': instance.picNum,
      'weibo_position': instance.weiboPosition,
      'show_attitude_bar': instance.showAttitudeBar,
      'buttons': instance.buttons,
      'from_cateid': instance.fromCateid,
      'mblog_buttons': instance.mblogButtons,
      'bid': instance.bid,
      'pics': instance.pics,
    };

Visible _$VisibleFromJson(Map<String, dynamic> json) {
  return Visible(
    json['type'],
    json['list_id'],
  );
}

Map<String, dynamic> _$VisibleToJson(Visible instance) => <String, dynamic>{
      'type': instance.type,
      'list_id': instance.listId,
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
    json['verified_type_ext'],
    json['verified_reason'],
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
      'verified_type_ext': instance.verifiedTypeExt,
      'verified_reason': instance.verifiedReason,
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
    json['user_name_certificate'],
    json['worldcup_2018'],
    json['weibo_display_fans'],
    json['relation_display'],
    json['wbzy_2018'],
    json['memorial_2018'],
    json['womensday_2018'],
    json['hongrenjie_2019'],
    json['china_2019'],
    json['hongkong_2019'],
    json['dzwbqlx_2019'],
    json['rrgyj_2019'],
    json['gongjiri_2019'],
    json['macao_2019'],
    json['china_2019_2'],
  );
}

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'bind_taobao': instance.bindTaobao,
      'user_name_certificate': instance.userNameCertificate,
      'worldcup_2018': instance.worldcup2018,
      'weibo_display_fans': instance.weiboDisplayFans,
      'relation_display': instance.relationDisplay,
      'wbzy_2018': instance.wbzy2018,
      'memorial_2018': instance.memorial2018,
      'womensday_2018': instance.womensday2018,
      'hongrenjie_2019': instance.hongrenjie2019,
      'china_2019': instance.china2019,
      'hongkong_2019': instance.hongkong2019,
      'dzwbqlx_2019': instance.dzwbqlx2019,
      'rrgyj_2019': instance.rrgyj2019,
      'gongjiri_2019': instance.gongjiri2019,
      'macao_2019': instance.macao2019,
      'china_2019_2': instance.china20192,
    };

Number_display_strategy _$Number_display_strategyFromJson(
    Map<String, dynamic> json) {
  return Number_display_strategy(
    json['apply_scenario_flag'],
    json['display_text_min_number'],
    json['display_text'],
  );
}

Map<String, dynamic> _$Number_display_strategyToJson(
        Number_display_strategy instance) =>
    <String, dynamic>{
      'apply_scenario_flag': instance.applyScenarioFlag,
      'display_text_min_number': instance.displayTextMinNumber,
      'display_text': instance.displayText,
    };

Buttons _$ButtonsFromJson(Map<String, dynamic> json) {
  return Buttons(
    json['type'],
    json['name'],
    json['pic'],
    json['params'] == null
        ? null
        : Params.fromJson(json['params'] as Map<String, dynamic>),
    json['actionlog'] == null
        ? null
        : Actionlog.fromJson(json['actionlog'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ButtonsToJson(Buttons instance) => <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'pic': instance.pic,
      'params': instance.params,
      'actionlog': instance.actionlog,
    };

Params _$ParamsFromJson(Map<String, dynamic> json) {
  return Params(
    json['uid'],
  );
}

Map<String, dynamic> _$ParamsToJson(Params instance) => <String, dynamic>{
      'uid': instance.uid,
    };

Actionlog _$ActionlogFromJson(Map<String, dynamic> json) {
  return Actionlog(
    json['act_code'],
    json['source'],
    json['act_type'],
    json['uicode'],
    json['oid'],
    json['fid'],
    json['cardid'],
    json['ext'],
  );
}

Map<String, dynamic> _$ActionlogToJson(Actionlog instance) => <String, dynamic>{
      'act_code': instance.actCode,
      'source': instance.source,
      'act_type': instance.actType,
      'uicode': instance.uicode,
      'oid': instance.oid,
      'fid': instance.fid,
      'cardid': instance.cardid,
      'ext': instance.ext,
    };

Mblog_buttons _$Mblog_buttonsFromJson(Map<String, dynamic> json) {
  return Mblog_buttons(
    json['type'],
    json['name'],
    json['pic'],
    json['actionlog'] == null
        ? null
        : Actionlog.fromJson(json['actionlog'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Mblog_buttonsToJson(Mblog_buttons instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'pic': instance.pic,
      'actionlog': instance.actionlog,
    };

Pics _$PicsFromJson(Map<String, dynamic> json) {
  return Pics(
    json['pid'],
    json['url'],
    json['size'],
    json['geo'] == null
        ? null
        : Geo.fromJson(json['geo'] as Map<String, dynamic>),
    json['large'] == null
        ? null
        : Large.fromJson(json['large'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PicsToJson(Pics instance) => <String, dynamic>{
      'pid': instance.pid,
      'url': instance.url,
      'size': instance.size,
      'geo': instance.geo,
      'large': instance.large,
    };

Geo _$GeoFromJson(Map<String, dynamic> json) {
  return Geo(
    json['width'],
    json['height'],
    json['croped'] as bool,
  );
}

Map<String, dynamic> _$GeoToJson(Geo instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'croped': instance.croped,
    };

Large _$LargeFromJson(Map<String, dynamic> json) {
  return Large(
    json['size'],
    json['url'],
    json['geo'] == null
        ? null
        : Geo.fromJson(json['geo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LargeToJson(Large instance) => <String, dynamic>{
      'size': instance.size,
      'url': instance.url,
      'geo': instance.geo,
    };
