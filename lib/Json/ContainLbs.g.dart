// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContainLbs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContainLbs _$ContainLbsFromJson(Map<String, dynamic> json) {
  return ContainLbs(
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    json['ok'],
    json['http_code'],
  );
}

Map<String, dynamic> _$ContainLbsToJson(ContainLbs instance) =>
    <String, dynamic>{
      'data': instance.data,
      'ok': instance.ok,
      'http_code': instance.httpCode,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    (json['statuses'] as List)
        ?.map((e) =>
            e == null ? null : Statuses.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['trends'] as List)
        ?.map((e) =>
            e == null ? null : Trends.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['max_id'],
    json['total'],
    json['page'],
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'statuses': instance.statuses,
      'trends': instance.trends,
      'max_id': instance.maxId,
      'total': instance.total,
      'page': instance.page,
    };

Statuses _$StatusesFromJson(Map<String, dynamic> json) {
  return Statuses(
    json['visible'] == null
        ? null
        : Visible.fromJson(json['visible'] as Map<String, dynamic>),
    json['created_at'],
    json['id'],
    json['mid'],
    json['can_edit'] as bool,
    json['show_additional_indication'],
    json['text'],
    json['textLength'],
    json['source'],
    json['favorited'] as bool,
    json['pic_ids'] as List,
    json['pic_types'],
    (json['pic_focus_podynamic'] as List)
        ?.map((e) => e == null
            ? null
            : Pic_focus_podynamic.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['pic_rectangle_object'] as List)
        ?.map((e) => e == null
            ? null
            : Pic_rectangle_object.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['pic_flag'],
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
    json['hide_flag'],
    json['darwin_tags'] as List,
    json['mblogtype'],
    json['rid'],
    json['more_info_type'],
    json['number_display_strategy'] == null
        ? null
        : Number_display_strategy.fromJson(
            json['number_display_strategy'] as Map<String, dynamic>),
    json['content_auth'],
    json['pic_num'],
    json['title'] == null
        ? null
        : Title.fromJson(json['title'] as Map<String, dynamic>),
    json['feedtype'],
    (json['buttons'] as List)
        ?.map((e) =>
            e == null ? null : Buttons.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['trend_status_source_type'],
    (json['mblog_buttons'] as List)
        ?.map((e) => e == null
            ? null
            : Mblog_buttons.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['hot_ext'],
    json['cityid'],
    (json['mblog_menus'] as List)
        ?.map((e) =>
            e == null ? null : Mblog_menus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['is_controlled_by_server'],
    json['topRightButtonType'],
    json['extra_button_info'] == null
        ? null
        : Extra_button_info.fromJson(
            json['extra_button_info'] as Map<String, dynamic>),
    json['page_info'] == null
        ? null
        : Page_info.fromJson(json['page_info'] as Map<String, dynamic>),
    (json['pics'] as List)
        ?.map(
            (e) => e == null ? null : Pics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['bid'],
  );
}

Map<String, dynamic> _$StatusesToJson(Statuses instance) => <String, dynamic>{
      'visible': instance.visible,
      'created_at': instance.createdAt,
      'id': instance.id,
      'mid': instance.mid,
      'can_edit': instance.canEdit,
      'show_additional_indication': instance.showAdditionalIndication,
      'text': instance.text,
      'textLength': instance.textLength,
      'source': instance.source,
      'favorited': instance.favorited,
      'pic_ids': instance.picIds,
      'pic_types': instance.picTypes,
      'pic_focus_podynamic': instance.picFocusPodynamic,
      'pic_rectangle_object': instance.picRectangleObject,
      'pic_flag': instance.picFlag,
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
      'hide_flag': instance.hideFlag,
      'darwin_tags': instance.darwinTags,
      'mblogtype': instance.mblogtype,
      'rid': instance.rid,
      'more_info_type': instance.moreInfoType,
      'number_display_strategy': instance.numberDisplayStrategy,
      'content_auth': instance.contentAuth,
      'pic_num': instance.picNum,
      'title': instance.title,
      'feedtype': instance.feedtype,
      'buttons': instance.buttons,
      'trend_status_source_type': instance.trendStatusSourceType,
      'mblog_buttons': instance.mblogButtons,
      'hot_ext': instance.hotExt,
      'cityid': instance.cityid,
      'mblog_menus': instance.mblogMenus,
      'is_controlled_by_server': instance.isControlledByServer,
      'topRightButtonType': instance.topRightButtonType,
      'extra_button_info': instance.extraButtonInfo,
      'page_info': instance.pageInfo,
      'pics': instance.pics,
      'bid': instance.bid,
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

Pic_focus_podynamic _$Pic_focus_podynamicFromJson(Map<String, dynamic> json) {
  return Pic_focus_podynamic(
    json['focus_podynamic'] == null
        ? null
        : Focus_podynamic.fromJson(
            json['focus_podynamic'] as Map<String, dynamic>),
    json['pic_id'],
  );
}

Map<String, dynamic> _$Pic_focus_podynamicToJson(
        Pic_focus_podynamic instance) =>
    <String, dynamic>{
      'focus_podynamic': instance.focusPodynamic,
      'pic_id': instance.picId,
    };

Focus_podynamic _$Focus_podynamicFromJson(Map<String, dynamic> json) {
  return Focus_podynamic(
    (json['left'] as num)?.toDouble(),
    (json['top'] as num)?.toDouble(),
    (json['width'] as num)?.toDouble(),
    (json['height'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$Focus_podynamicToJson(Focus_podynamic instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'width': instance.width,
      'height': instance.height,
    };

Pic_rectangle_object _$Pic_rectangle_objectFromJson(Map<String, dynamic> json) {
  return Pic_rectangle_object(
    (json['rectangle_objects'] as List)
        ?.map((e) => e == null
            ? null
            : Rectangle_objects.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['pic_id'],
  );
}

Map<String, dynamic> _$Pic_rectangle_objectToJson(
        Pic_rectangle_object instance) =>
    <String, dynamic>{
      'rectangle_objects': instance.rectangleObjects,
      'pic_id': instance.picId,
    };

Rectangle_objects _$Rectangle_objectsFromJson(Map<String, dynamic> json) {
  return Rectangle_objects(
    (json['top'] as num)?.toDouble(),
    (json['left'] as num)?.toDouble(),
    (json['width'] as num)?.toDouble(),
    (json['height'] as num)?.toDouble(),
    json['type'],
  );
}

Map<String, dynamic> _$Rectangle_objectsToJson(Rectangle_objects instance) =>
    <String, dynamic>{
      'top': instance.top,
      'left': instance.left,
      'width': instance.width,
      'height': instance.height,
      'type': instance.type,
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
    json['user_name_certificate'],
  );
}

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'user_name_certificate': instance.userNameCertificate,
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

Title _$TitleFromJson(Map<String, dynamic> json) {
  return Title(
    json['text'],
    json['base_color'],
    json['icon_url'],
  );
}

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'text': instance.text,
      'base_color': instance.baseColor,
      'icon_url': instance.iconUrl,
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
    json['origin'],
    json['extparams'] == null
        ? null
        : Extparams.fromJson(json['extparams'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ParamsToJson(Params instance) => <String, dynamic>{
      'uid': instance.uid,
      'origin': instance.origin,
      'extparams': instance.extparams,
    };

Extparams _$ExtparamsFromJson(Map<String, dynamic> json) {
  return Extparams(
    json['followscene'],
    json['followcardid'],
    json['origin'],
  );
}

Map<String, dynamic> _$ExtparamsToJson(Extparams instance) => <String, dynamic>{
      'followscene': instance.followscene,
      'followcardid': instance.followcardid,
      'origin': instance.origin,
    };

Actionlog _$ActionlogFromJson(Map<String, dynamic> json) {
  return Actionlog(
    json['act_code'],
    json['source'],
    json['act_type'],
    json['uicode'],
    json['oid'],
    json['fid'],
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

Mblog_menus _$Mblog_menusFromJson(Map<String, dynamic> json) {
  return Mblog_menus(
    json['type'],
    json['actionlog'] == null
        ? null
        : Actionlog.fromJson(json['actionlog'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Mblog_menusToJson(Mblog_menus instance) =>
    <String, dynamic>{
      'type': instance.type,
      'actionlog': instance.actionlog,
    };

Extra_button_info _$Extra_button_infoFromJson(Map<String, dynamic> json) {
  return Extra_button_info(
    json['extra_button_image'],
    json['extra_button_highlight_image'],
    json['extra_button_type'],
  );
}

Map<String, dynamic> _$Extra_button_infoToJson(Extra_button_info instance) =>
    <String, dynamic>{
      'extra_button_image': instance.extraButtonImage,
      'extra_button_highlight_image': instance.extraButtonHighlightImage,
      'extra_button_type': instance.extraButtonType,
    };

Page_info _$Page_infoFromJson(Map<String, dynamic> json) {
  return Page_info(
    json['type'],
    json['icon'],
    json['page_pic'] == null
        ? null
        : Page_pic.fromJson(json['page_pic'] as Map<String, dynamic>),
    json['page_url'],
    json['page_title'],
    json['content1'],
    json['content2'],
  );
}

Map<String, dynamic> _$Page_infoToJson(Page_info instance) => <String, dynamic>{
      'type': instance.type,
      'icon': instance.icon,
      'page_pic': instance.pagePic,
      'page_url': instance.pageUrl,
      'page_title': instance.pageTitle,
      'content1': instance.content1,
      'content2': instance.content2,
    };

Page_pic _$Page_picFromJson(Map<String, dynamic> json) {
  return Page_pic(
    json['url'],
    json['width'],
    json['height'],
  );
}

Map<String, dynamic> _$Page_picToJson(Page_pic instance) => <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
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

Trends _$TrendsFromJson(Map<String, dynamic> json) {
  return Trends(
    json['card_type'],
    json['itemid'],
    json['col'],
    (json['group'] as List)
        ?.map(
            (e) => e == null ? null : Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TrendsToJson(Trends instance) => <String, dynamic>{
      'card_type': instance.cardType,
      'itemid': instance.itemid,
      'col': instance.col,
      'group': instance.group,
    };

Group _$GroupFromJson(Map<String, dynamic> json) {
  return Group(
    json['title_sub'],
    json['pic'],
    json['scheme'],
    json['action_log'] == null
        ? null
        : Action_log.fromJson(json['action_log'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'title_sub': instance.titleSub,
      'pic': instance.pic,
      'scheme': instance.scheme,
      'action_log': instance.actionLog,
    };

Action_log _$Action_logFromJson(Map<String, dynamic> json) {
  return Action_log(
    json['act_code'],
    json['act_type'],
    json['uicode'],
    json['fid'],
    json['ext'],
  );
}

Map<String, dynamic> _$Action_logToJson(Action_log instance) =>
    <String, dynamic>{
      'act_code': instance.actCode,
      'act_type': instance.actType,
      'uicode': instance.uicode,
      'fid': instance.fid,
      'ext': instance.ext,
    };
