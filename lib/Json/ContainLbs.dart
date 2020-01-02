import 'package:json_annotation/json_annotation.dart'; 

import './Contain.dart';

part 'ContainLbs.g.dart';


@JsonSerializable()
  class ContainLbs extends Object {

  @JsonKey(name: 'data')
  Data data;

  @JsonKey(name: 'ok')
  dynamic ok;

  @JsonKey(name: 'http_code')
  dynamic httpCode;

  ContainLbs(this.data,this.ok,this.httpCode,);

  factory ContainLbs.fromJson(Map<dynamic, dynamic> srcJson) => _$ContainLbsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$ContainLbsToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'statuses')
  List<Statuses> statuses;

  @JsonKey(name: 'trends')
  List<Trends> trends;

  @JsonKey(name: 'max_id')
  dynamic maxId;

  @JsonKey(name: 'total')
  dynamic total;

  @JsonKey(name: 'page')
  dynamic page;

  Data(this.statuses,this.trends,this.maxId,this.total,this.page,);

  factory Data.fromJson(Map<dynamic, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class Statuses extends Object {

  @JsonKey(name: 'visible')
  Visible visible;

  @JsonKey(name: 'created_at')
  dynamic createdAt;

  @JsonKey(name: 'id')
  dynamic id;

  @JsonKey(name: 'mid')
  dynamic mid;

  @JsonKey(name: 'can_edit')
  bool canEdit;

  @JsonKey(name: 'show_additional_indication')
  dynamic showAdditionalIndication;

  @JsonKey(name: 'text')
  dynamic text;

  @JsonKey(name: 'textLength')
  dynamic textLength;

  @JsonKey(name: 'source')
  dynamic source;

  @JsonKey(name: 'favorited')
  bool favorited;

  @JsonKey(name: 'pic_ids')
  List<dynamic> picIds;

  @JsonKey(name: 'pic_types')
  dynamic picTypes;

  @JsonKey(name: 'pic_focus_podynamic')
  List<Pic_focus_podynamic> picFocusPodynamic;

  @JsonKey(name: 'pic_rectangle_object')
  List<Pic_rectangle_object> picRectangleObject;

  @JsonKey(name: 'pic_flag')
  dynamic picFlag;

  @JsonKey(name: 'thumbnail_pic')
  dynamic thumbnailPic;

  @JsonKey(name: 'bmiddle_pic')
  dynamic bmiddlePic;

  @JsonKey(name: 'original_pic')
  dynamic originalPic;

  @JsonKey(name: 'is_paid')
  bool isPaid;

  @JsonKey(name: 'mblog_vip_type')
  dynamic mblogVipType;

  @JsonKey(name: 'user')
  User user;

  @JsonKey(name: 'picStatus')
  dynamic picStatus;

  @JsonKey(name: 'reposts_count')
  dynamic repostsCount;

  @JsonKey(name: 'comments_count')
  dynamic commentsCount;

  @JsonKey(name: 'attitudes_count')
  dynamic attitudesCount;

  @JsonKey(name: 'pending_approval_count')
  dynamic pendingApprovalCount;

  @JsonKey(name: 'isLongText')
  bool isLongText;

  @JsonKey(name: 'reward_exhibition_type')
  dynamic rewardExhibitionType;

  @JsonKey(name: 'hide_flag')
  dynamic hideFlag;

  @JsonKey(name: 'darwin_tags')
  List<dynamic> darwinTags;

  @JsonKey(name: 'mblogtype')
  dynamic mblogtype;

  @JsonKey(name: 'rid')
  dynamic rid;

  @JsonKey(name: 'more_info_type')
  dynamic moreInfoType;

  @JsonKey(name: 'number_display_strategy')
  Number_display_strategy numberDisplayStrategy;

  @JsonKey(name: 'content_auth')
  dynamic contentAuth;

  @JsonKey(name: 'pic_num')
  dynamic picNum;

  @JsonKey(name: 'title')
  Title title;

  @JsonKey(name: 'feedtype')
  dynamic feedtype;

  @JsonKey(name: 'buttons')
  List<Buttons> buttons;

  @JsonKey(name: 'trend_status_source_type')
  dynamic trendStatusSourceType;

  @JsonKey(name: 'mblog_buttons')
  List<Mblog_buttons> mblogButtons;

  @JsonKey(name: 'hot_ext')
  dynamic hotExt;

  @JsonKey(name: 'cityid')
  dynamic cityid;

  @JsonKey(name: 'mblog_menus')
  List<Mblog_menus> mblogMenus;

  @JsonKey(name: 'is_controlled_by_server')
  dynamic isControlledByServer;

  @JsonKey(name: 'topRightButtonType')
  dynamic topRightButtonType;

  @JsonKey(name: 'extra_button_info')
  Extra_button_info extraButtonInfo;

  @JsonKey(name: 'page_info')
  Page_info pageInfo;

  @JsonKey(name: 'pics')
  List<Pics> pics;

  @JsonKey(name: 'bid')
  dynamic bid;

  Statuses(this.visible,this.createdAt,this.id,this.mid,this.canEdit,this.showAdditionalIndication,this.text,this.textLength,this.source,this.favorited,this.picIds,this.picTypes,this.picFocusPodynamic,this.picRectangleObject,this.picFlag,this.thumbnailPic,this.bmiddlePic,this.originalPic,this.isPaid,this.mblogVipType,this.user,this.picStatus,this.repostsCount,this.commentsCount,this.attitudesCount,this.pendingApprovalCount,this.isLongText,this.rewardExhibitionType,this.hideFlag,this.darwinTags,this.mblogtype,this.rid,this.moreInfoType,this.numberDisplayStrategy,this.contentAuth,this.picNum,this.title,this.feedtype,this.buttons,this.trendStatusSourceType,this.mblogButtons,this.hotExt,this.cityid,this.mblogMenus,this.isControlledByServer,this.topRightButtonType,this.extraButtonInfo,this.pageInfo,this.pics,this.bid,);

  factory Statuses.fromJson(Map<dynamic, dynamic> srcJson) => _$StatusesFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$StatusesToJson(this);

}

  
@JsonSerializable()
  class Visible extends Object {

  @JsonKey(name: 'type')
  dynamic type;

  @JsonKey(name: 'list_id')
  dynamic listId;

  Visible(this.type,this.listId,);

  factory Visible.fromJson(Map<dynamic, dynamic> srcJson) => _$VisibleFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$VisibleToJson(this);

}

  
@JsonSerializable()
  class Pic_focus_podynamic extends Object {

  @JsonKey(name: 'focus_podynamic')
  Focus_podynamic focusPodynamic;

  @JsonKey(name: 'pic_id')
  dynamic picId;

  Pic_focus_podynamic(this.focusPodynamic,this.picId,);

  factory Pic_focus_podynamic.fromJson(Map<dynamic, dynamic> srcJson) => _$Pic_focus_podynamicFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Pic_focus_podynamicToJson(this);

}

  
@JsonSerializable()
  class Focus_podynamic extends Object {

  @JsonKey(name: 'left')
  double left;

  @JsonKey(name: 'top')
  double top;

  @JsonKey(name: 'width')
  double width;

  @JsonKey(name: 'height')
  double height;

  Focus_podynamic(this.left,this.top,this.width,this.height,);

  factory Focus_podynamic.fromJson(Map<dynamic, dynamic> srcJson) => _$Focus_podynamicFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Focus_podynamicToJson(this);

}

  
@JsonSerializable()
  class Pic_rectangle_object extends Object {

  @JsonKey(name: 'rectangle_objects')
  List<Rectangle_objects> rectangleObjects;

  @JsonKey(name: 'pic_id')
  dynamic picId;

  Pic_rectangle_object(this.rectangleObjects,this.picId,);

  factory Pic_rectangle_object.fromJson(Map<dynamic, dynamic> srcJson) => _$Pic_rectangle_objectFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Pic_rectangle_objectToJson(this);

}

  
@JsonSerializable()
  class Rectangle_objects extends Object {

  @JsonKey(name: 'top')
  double top;

  @JsonKey(name: 'left')
  double left;

  @JsonKey(name: 'width')
  double width;

  @JsonKey(name: 'height')
  double height;

  @JsonKey(name: 'type')
  dynamic type;

  Rectangle_objects(this.top,this.left,this.width,this.height,this.type,);

  factory Rectangle_objects.fromJson(Map<dynamic, dynamic> srcJson) => _$Rectangle_objectsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Rectangle_objectsToJson(this);

}

  
@JsonSerializable()
  class User extends Object {

  @JsonKey(name: 'id')
  dynamic id;

  @JsonKey(name: 'screen_name')
  dynamic screenName;

  @JsonKey(name: 'profile_image_url')
  dynamic profileImageUrl;

  @JsonKey(name: 'profile_url')
  dynamic profileUrl;

  @JsonKey(name: 'statuses_count')
  dynamic statusesCount;

  @JsonKey(name: 'verified')
  bool verified;

  @JsonKey(name: 'verified_type')
  dynamic verifiedType;

  @JsonKey(name: 'close_blue_v')
  bool closeBlueV;

  @JsonKey(name: 'description')
  dynamic description;

  @JsonKey(name: 'gender')
  dynamic gender;

  @JsonKey(name: 'mbtype')
  dynamic mbtype;

  @JsonKey(name: 'urank')
  dynamic urank;

  @JsonKey(name: 'mbrank')
  dynamic mbrank;

  @JsonKey(name: 'follow_me')
  bool followMe;

  @JsonKey(name: 'following')
  bool following;

  @JsonKey(name: 'followers_count')
  dynamic followersCount;

  @JsonKey(name: 'follow_count')
  dynamic followCount;

  @JsonKey(name: 'cover_image_phone')
  dynamic coverImagePhone;

  @JsonKey(name: 'avatar_hd')
  dynamic avatarHd;

  @JsonKey(name: 'like')
  bool like;

  @JsonKey(name: 'like_me')
  bool likeMe;

  @JsonKey(name: 'badge')
  Badge badge;

  User(this.id,this.screenName,this.profileImageUrl,this.profileUrl,this.statusesCount,this.verified,this.verifiedType,this.closeBlueV,this.description,this.gender,this.mbtype,this.urank,this.mbrank,this.followMe,this.following,this.followersCount,this.followCount,this.coverImagePhone,this.avatarHd,this.like,this.likeMe,this.badge,);

  factory User.fromJson(Map<dynamic, dynamic> srcJson) => _$UserFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$UserToJson(this);

}

  
@JsonSerializable()
  class Badge extends Object {

  @JsonKey(name: 'user_name_certificate')
  dynamic userNameCertificate;

  Badge(this.userNameCertificate,);

  factory Badge.fromJson(Map<dynamic, dynamic> srcJson) => _$BadgeFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$BadgeToJson(this);

}

  
@JsonSerializable()
  class Number_display_strategy extends Object {

  @JsonKey(name: 'apply_scenario_flag')
  dynamic applyScenarioFlag;

  @JsonKey(name: 'display_text_min_number')
  dynamic displayTextMinNumber;

  @JsonKey(name: 'display_text')
  dynamic displayText;

  Number_display_strategy(this.applyScenarioFlag,this.displayTextMinNumber,this.displayText,);

  factory Number_display_strategy.fromJson(Map<dynamic, dynamic> srcJson) => _$Number_display_strategyFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Number_display_strategyToJson(this);

}

  
@JsonSerializable()
  class Title extends Object {

  @JsonKey(name: 'text')
  dynamic text;

  @JsonKey(name: 'base_color')
  dynamic baseColor;

  @JsonKey(name: 'icon_url')
  dynamic iconUrl;

  Title(this.text,this.baseColor,this.iconUrl,);

  factory Title.fromJson(Map<dynamic, dynamic> srcJson) => _$TitleFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$TitleToJson(this);

}

  
@JsonSerializable()
  class Buttons extends Object {

  @JsonKey(name: 'type')
  dynamic type;

  @JsonKey(name: 'name')
  dynamic name;

  @JsonKey(name: 'pic')
  dynamic pic;

  @JsonKey(name: 'params')
  Params params;

  @JsonKey(name: 'actionlog')
  Actionlog actionlog;

  Buttons(this.type,this.name,this.pic,this.params,this.actionlog,);

  factory Buttons.fromJson(Map<dynamic, dynamic> srcJson) => _$ButtonsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$ButtonsToJson(this);

}

  
@JsonSerializable()
  class Params extends Object {

  @JsonKey(name: 'uid')
  dynamic uid;

  @JsonKey(name: 'origin')
  dynamic origin;

  @JsonKey(name: 'extparams')
  Extparams extparams;

  Params(this.uid,this.origin,this.extparams,);

  factory Params.fromJson(Map<dynamic, dynamic> srcJson) => _$ParamsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$ParamsToJson(this);

}

  
@JsonSerializable()
  class Extparams extends Object {

  @JsonKey(name: 'followscene')
  dynamic followscene;

  @JsonKey(name: 'followcardid')
  dynamic followcardid;

  @JsonKey(name: 'origin')
  dynamic origin;

  Extparams(this.followscene,this.followcardid,this.origin,);

  factory Extparams.fromJson(Map<dynamic, dynamic> srcJson) => _$ExtparamsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$ExtparamsToJson(this);

}

  
@JsonSerializable()
  class Actionlog extends Object {

  @JsonKey(name: 'act_code')
  dynamic actCode;

  @JsonKey(name: 'source')
  dynamic source;

  @JsonKey(name: 'act_type')
  dynamic actType;

  @JsonKey(name: 'uicode')
  dynamic uicode;

  @JsonKey(name: 'oid')
  dynamic oid;

  @JsonKey(name: 'fid')
  dynamic fid;

  @JsonKey(name: 'ext')
  dynamic ext;

  Actionlog(this.actCode,this.source,this.actType,this.uicode,this.oid,this.fid,this.ext,);

  factory Actionlog.fromJson(Map<dynamic, dynamic> srcJson) => _$ActionlogFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$ActionlogToJson(this);

}

  
@JsonSerializable()
  class Mblog_buttons extends Object {

  @JsonKey(name: 'type')
  dynamic type;

  @JsonKey(name: 'name')
  dynamic name;

  @JsonKey(name: 'pic')
  dynamic pic;

  @JsonKey(name: 'actionlog')
  Actionlog actionlog;

  Mblog_buttons(this.type,this.name,this.pic,this.actionlog,);

  factory Mblog_buttons.fromJson(Map<dynamic, dynamic> srcJson) => _$Mblog_buttonsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Mblog_buttonsToJson(this);

}

  


  
@JsonSerializable()
  class Mblog_menus extends Object {

  @JsonKey(name: 'type')
  dynamic type;

  @JsonKey(name: 'actionlog')
  Actionlog actionlog;

  Mblog_menus(this.type,this.actionlog,);

  factory Mblog_menus.fromJson(Map<dynamic, dynamic> srcJson) => _$Mblog_menusFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Mblog_menusToJson(this);

}

  


  
@JsonSerializable()
  class Extra_button_info extends Object {

  @JsonKey(name: 'extra_button_image')
  dynamic extraButtonImage;

  @JsonKey(name: 'extra_button_highlight_image')
  dynamic extraButtonHighlightImage;

  @JsonKey(name: 'extra_button_type')
  dynamic extraButtonType;

  Extra_button_info(this.extraButtonImage,this.extraButtonHighlightImage,this.extraButtonType,);

  factory Extra_button_info.fromJson(Map<dynamic, dynamic> srcJson) => _$Extra_button_infoFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Extra_button_infoToJson(this);

}

  
@JsonSerializable()
  class Page_info extends Object {

  @JsonKey(name: 'type')
  dynamic type;

  @JsonKey(name: 'icon')
  dynamic icon;

  @JsonKey(name: 'page_pic')
  Page_pic pagePic;

  @JsonKey(name: 'page_url')
  dynamic pageUrl;

  @JsonKey(name: 'page_title')
  dynamic pageTitle;

  @JsonKey(name: 'content1')
  dynamic content1;

  @JsonKey(name: 'content2')
  dynamic content2;

  Page_info(this.type,this.icon,this.pagePic,this.pageUrl,this.pageTitle,this.content1,this.content2,);

  factory Page_info.fromJson(Map<dynamic, dynamic> srcJson) => _$Page_infoFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Page_infoToJson(this);

}

  
@JsonSerializable()
  class Page_pic extends Object {

  @JsonKey(name: 'url')
  dynamic url;

  @JsonKey(name: 'width')
  dynamic width;

  @JsonKey(name: 'height')
  dynamic height;

  Page_pic(this.url,this.width,this.height,);

  factory Page_pic.fromJson(Map<dynamic, dynamic> srcJson) => _$Page_picFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Page_picToJson(this);

}

  
@JsonSerializable()
  class Pics extends Object {

  @JsonKey(name: 'pid')
  dynamic pid;

  @JsonKey(name: 'url')
  dynamic url;

  @JsonKey(name: 'size')
  dynamic size;

  @JsonKey(name: 'geo')
  Geo geo;

  @JsonKey(name: 'large')
  Large large;

  Pics(this.pid,this.url,this.size,this.geo,this.large,);

  factory Pics.fromJson(Map<dynamic, dynamic> srcJson) => _$PicsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$PicsToJson(this);

}

  
@JsonSerializable()
  class Geo extends Object {

  @JsonKey(name: 'width')
  dynamic width;

  @JsonKey(name: 'height')
  dynamic height;

  @JsonKey(name: 'croped')
  bool croped;

  Geo(this.width,this.height,this.croped,);

  factory Geo.fromJson(Map<dynamic, dynamic> srcJson) => _$GeoFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$GeoToJson(this);

}

  
@JsonSerializable()
  class Large extends Object {

  @JsonKey(name: 'size')
  dynamic size;

  @JsonKey(name: 'url')
  dynamic url;

  @JsonKey(name: 'geo')
  Geo geo;

  Large(this.size,this.url,this.geo,);

  factory Large.fromJson(Map<dynamic, dynamic> srcJson) => _$LargeFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$LargeToJson(this);

}

  


  
@JsonSerializable()
  class Trends extends Object {

  @JsonKey(name: 'card_type')
  dynamic cardType;

  @JsonKey(name: 'itemid')
  dynamic itemid;

  @JsonKey(name: 'col')
  dynamic col;

  @JsonKey(name: 'group')
  List<Group> group;

  Trends(this.cardType,this.itemid,this.col,this.group,);

  factory Trends.fromJson(Map<dynamic, dynamic> srcJson) => _$TrendsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$TrendsToJson(this);

}

  
@JsonSerializable()
  class Group extends Object {

  @JsonKey(name: 'title_sub')
  dynamic titleSub;

  @JsonKey(name: 'pic')
  dynamic pic;

  @JsonKey(name: 'scheme')
  dynamic scheme;

  @JsonKey(name: 'action_log')
  Action_log actionLog;

  Group(this.titleSub,this.pic,this.scheme,this.actionLog,);

  factory Group.fromJson(Map<dynamic, dynamic> srcJson) => _$GroupFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$GroupToJson(this);

}

  
@JsonSerializable()
  class Action_log extends Object {

  @JsonKey(name: 'act_code')
  dynamic actCode;

  @JsonKey(name: 'act_type')
  dynamic actType;

  @JsonKey(name: 'uicode')
  dynamic uicode;

  @JsonKey(name: 'fid')
  dynamic fid;

  @JsonKey(name: 'ext')
  dynamic ext;

  Action_log(this.actCode,this.actType,this.uicode,this.fid,this.ext,);

  factory Action_log.fromJson(Map<dynamic, dynamic> srcJson) => _$Action_logFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Action_logToJson(this);

}

  
