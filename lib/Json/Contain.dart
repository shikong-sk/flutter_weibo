import 'package:json_annotation/json_annotation.dart'; 
  
part 'Contain.g.dart';


@JsonSerializable()
  class Contain extends Object {

  @JsonKey(name: 'ok')
  dynamic ok;

  @JsonKey(name: 'data')
  Data data;

  Contain(this.ok,this.data,);

  factory Contain.fromJson(Map<dynamic, dynamic> srcJson) => _$ContainFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$ContainToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'cardlistInfo')
  CardlistInfo cardlistInfo;

  @JsonKey(name: 'cards')
  List<Cards> cards;

  @JsonKey(name: 'scheme')
  dynamic scheme;

  @JsonKey(name: 'showAppTips')
  dynamic showAppTips;

  @JsonKey(name: 'openApp')
  dynamic openApp;

  Data(this.cardlistInfo,this.cards,this.scheme,this.showAppTips,this.openApp,);

  factory Data.fromJson(Map<dynamic, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class CardlistInfo extends Object {

  @JsonKey(name: 'v_p')
  dynamic vP;

  @JsonKey(name: 'statistics_from')
  dynamic statisticsFrom;

  @JsonKey(name: 'containerid')
  dynamic containerid;

  @JsonKey(name: 'title_top')
  dynamic titleTop;

  @JsonKey(name: 'show_style')
  dynamic showStyle;

  @JsonKey(name: 'total')
  dynamic total;

  @JsonKey(name: 'can_shared')
  dynamic canShared;

  @JsonKey(name: 'since_id')
  dynamic sinceId;

  @JsonKey(name: 'cardlist_title')
  dynamic cardlistTitle;

  @JsonKey(name: 'desc')
  dynamic desc;

  @JsonKey(name: 'cardlist_head_cards')
  List<Cardlist_head_cards> cardlistHeadCards;

  CardlistInfo(this.vP,this.statisticsFrom,this.containerid,this.titleTop,this.showStyle,this.total,this.canShared,this.sinceId,this.cardlistTitle,this.desc,this.cardlistHeadCards,);

  factory CardlistInfo.fromJson(Map<dynamic, dynamic> srcJson) => _$CardlistInfoFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$CardlistInfoToJson(this);

}

  
@JsonSerializable()
  class Cardlist_head_cards extends Object {

  Cardlist_head_cards();

  factory Cardlist_head_cards.fromJson(Map<dynamic, dynamic> srcJson) => _$Cardlist_head_cardsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Cardlist_head_cardsToJson(this);

}

  
@JsonSerializable()
  class Cards extends Object {

  @JsonKey(name: 'card_type')
  dynamic cardType;

  @JsonKey(name: 'itemid')
  dynamic itemid;

  @JsonKey(name: 'scheme')
  dynamic scheme;

  @JsonKey(name: 'weibo_need')
  dynamic weiboNeed;

  @JsonKey(name: 'mblog')
  Mblog mblog;

  @JsonKey(name: 'show_type')
  dynamic showType;

  @JsonKey(name: 'mblog_buttons')
  List<Mblog_buttons> mblogButtons;

  @JsonKey(name: 'hot_request_id')
  dynamic hotRequestId;

  Cards(this.cardType,this.itemid,this.scheme,this.weiboNeed,this.mblog,this.showType,this.mblogButtons,this.hotRequestId,);

  factory Cards.fromJson(Map<dynamic, dynamic> srcJson) => _$CardsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$CardsToJson(this);

}

  
@JsonSerializable()
  class Mblog extends Object {

  @JsonKey(name: 'visible')
  Visible visible;

  @JsonKey(name: 'created_at')
  dynamic createdAt;

  @JsonKey(name: 'id')
  dynamic id;

  @JsonKey(name: 'idstr')
  dynamic idstr;

  @JsonKey(name: 'mid')
  dynamic mid;

  @JsonKey(name: 'edit_count')
  dynamic editCount;

  @JsonKey(name: 'can_edit')
  bool canEdit;

  @JsonKey(name: 'edit_at')
  dynamic editAt;

  @JsonKey(name: 'version')
  dynamic version;

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

  @JsonKey(name: 'pic_types')
  dynamic picTypes;

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

  @JsonKey(name: 'reward_scheme')
  dynamic rewardScheme;

  @JsonKey(name: 'hide_flag')
  dynamic hideFlag;

  @JsonKey(name: 'mblogtype')
  dynamic mblogtype;

  @JsonKey(name: 'rid')
  dynamic rid;

  @JsonKey(name: 'more_info_type')
  dynamic moreInfoType;

  @JsonKey(name: 'extern_safe')
  dynamic externSafe;

  @JsonKey(name: 'number_display_strategy')
  Number_display_strategy numberDisplayStrategy;

  @JsonKey(name: 'content_auth')
  dynamic contentAuth;

  @JsonKey(name: 'pic_num')
  dynamic picNum;

  @JsonKey(name: 'weibo_position')
  dynamic weiboPosition;

  @JsonKey(name: 'show_attitude_bar')
  dynamic showAttitudeBar;

  @JsonKey(name: 'buttons')
  List<Buttons> buttons;

  @JsonKey(name: 'from_cateid')
  dynamic fromCateid;

  // @JsonKey(name: 'recommend_source')
  // dynamic recommendSource;

  @JsonKey(name: 'mblog_buttons')
  List<Mblog_buttons> mblogButtons;

  @JsonKey(name: 'bid')
  dynamic bid;

  @JsonKey(name: 'pics')
  List<Pics> pics;

  Mblog(this.visible,this.createdAt,this.id,this.idstr,this.mid,this.editCount,this.canEdit,this.editAt,this.version,this.showAdditionalIndication,this.text,this.textLength,this.source,this.favorited,this.picTypes,this.thumbnailPic,this.bmiddlePic,this.originalPic,this.isPaid,this.mblogVipType,this.user,this.picStatus,this.repostsCount,this.commentsCount,this.attitudesCount,this.pendingApprovalCount,this.isLongText,this.rewardExhibitionType,this.rewardScheme,this.hideFlag,this.mblogtype,this.rid,this.moreInfoType,this.externSafe,this.numberDisplayStrategy,this.contentAuth,this.picNum,this.weiboPosition,this.showAttitudeBar,this.buttons,this.fromCateid,this.mblogButtons,this.bid,this.pics,);

  factory Mblog.fromJson(Map<dynamic, dynamic> srcJson) => _$MblogFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$MblogToJson(this);

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

  @JsonKey(name: 'verified_type_ext')
  dynamic verifiedTypeExt;

  @JsonKey(name: 'verified_reason')
  dynamic verifiedReason;

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

  User(this.id,this.screenName,this.profileImageUrl,this.profileUrl,this.statusesCount,this.verified,this.verifiedType,this.verifiedTypeExt,this.verifiedReason,this.closeBlueV,this.description,this.gender,this.mbtype,this.urank,this.mbrank,this.followMe,this.following,this.followersCount,this.followCount,this.coverImagePhone,this.avatarHd,this.like,this.likeMe,this.badge,);

  factory User.fromJson(Map<dynamic, dynamic> srcJson) => _$UserFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$UserToJson(this);

}

  
@JsonSerializable()
  class Badge extends Object {

  @JsonKey(name: 'bind_taobao')
  dynamic bindTaobao;

  @JsonKey(name: 'user_name_certificate')
  dynamic userNameCertificate;

  @JsonKey(name: 'worldcup_2018')
  dynamic worldcup2018;

  @JsonKey(name: 'weibo_display_fans')
  dynamic weiboDisplayFans;

  @JsonKey(name: 'relation_display')
  dynamic relationDisplay;

  @JsonKey(name: 'wbzy_2018')
  dynamic wbzy2018;

  @JsonKey(name: 'memorial_2018')
  dynamic memorial2018;

  @JsonKey(name: 'womensday_2018')
  dynamic womensday2018;

  @JsonKey(name: 'hongrenjie_2019')
  dynamic hongrenjie2019;

  @JsonKey(name: 'china_2019')
  dynamic china2019;

  @JsonKey(name: 'hongkong_2019')
  dynamic hongkong2019;

  @JsonKey(name: 'dzwbqlx_2019')
  dynamic dzwbqlx2019;

  @JsonKey(name: 'rrgyj_2019')
  dynamic rrgyj2019;

  @JsonKey(name: 'gongjiri_2019')
  dynamic gongjiri2019;

  @JsonKey(name: 'macao_2019')
  dynamic macao2019;

  @JsonKey(name: 'china_2019_2')
  dynamic china20192;

  Badge(this.bindTaobao,this.userNameCertificate,this.worldcup2018,this.weiboDisplayFans,this.relationDisplay,this.wbzy2018,this.memorial2018,this.womensday2018,this.hongrenjie2019,this.china2019,this.hongkong2019,this.dzwbqlx2019,this.rrgyj2019,this.gongjiri2019,this.macao2019,this.china20192,);

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

  Params(this.uid,);

  factory Params.fromJson(Map<dynamic, dynamic> srcJson) => _$ParamsFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$ParamsToJson(this);

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

  @JsonKey(name: 'cardid')
  dynamic cardid;

  @JsonKey(name: 'ext')
  dynamic ext;

  Actionlog(this.actCode,this.source,this.actType,this.uicode,this.oid,this.fid,this.cardid,this.ext,);

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

  


  
