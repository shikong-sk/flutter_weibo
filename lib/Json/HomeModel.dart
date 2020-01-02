import 'package:json_annotation/json_annotation.dart'; 
  
part 'HomeModel.g.dart';


@JsonSerializable()
  class HomeModel extends Object {

  @JsonKey(name: 'statuses')
  List<Statusess> statusess;

  @JsonKey(name: 'advertises')
  List<dynamic> advertises;

  @JsonKey(name: 'ad')
  List<dynamic> ad;

  @JsonKey(name: 'hasvisible')
  bool hasvisible;

  @JsonKey(name: 'previous_cursor')
  int previousCursor;

  @JsonKey(name: 'next_cursor')
  int nextCursor;

  @JsonKey(name: 'previous_cursor_str')
  String previousCursorStr;

  @JsonKey(name: 'next_cursor_str')
  String nextCursorStr;

  @JsonKey(name: 'total_number')
  int totalNumber;

  @JsonKey(name: 'interval')
  int interval;

  @JsonKey(name: 'uve_blank')
  int uveBlank;

  @JsonKey(name: 'since_id')
  int sinceId;

  @JsonKey(name: 'since_id_str')
  String sinceIdStr;

  @JsonKey(name: 'max_id')
  int maxId;

  @JsonKey(name: 'max_id_str')
  String maxIdStr;

  @JsonKey(name: 'has_unread')
  int hasUnread;

  HomeModel(this.statusess,this.advertises,this.ad,this.hasvisible,this.previousCursor,this.nextCursor,this.previousCursorStr,this.nextCursorStr,this.totalNumber,this.interval,this.uveBlank,this.sinceId,this.sinceIdStr,this.maxId,this.maxIdStr,this.hasUnread,);

  factory HomeModel.fromJson(Map<String, dynamic> srcJson) => _$HomeModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);

}

  
@JsonSerializable()
  class Statusess extends Object {

  @JsonKey(name: 'visible')
  Visible visible;

  @JsonKey(name: 'created_at')
  String createdAt;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'idstr')
  String idstr;

  @JsonKey(name: 'mid')
  String mid;

  @JsonKey(name: 'can_edit')
  bool canEdit;

  @JsonKey(name: 'show_additional_indication')
  int showAdditionalIndication;

  @JsonKey(name: 'text')
  String text;

  @JsonKey(name: 'textLength')
  int textLength;

  @JsonKey(name: 'source_allowclick')
  int sourceAllowclick;

  @JsonKey(name: 'source_type')
  int sourceType;

  @JsonKey(name: 'source')
  String source;

  @JsonKey(name: 'favorited')
  bool favorited;

  @JsonKey(name: 'truncated')
  bool truncated;

  @JsonKey(name: 'in_reply_to_status_id')
  String inReplyToStatusId;

  @JsonKey(name: 'in_reply_to_user_id')
  String inReplyToUserId;

  @JsonKey(name: 'in_reply_to_screen_name')
  String inReplyToScreenName;

  @JsonKey(name: 'pic_urls')
  List<Pic_urls> picUrls;

  @JsonKey(name: 'thumbnail_pic')
  String thumbnailPic;

  @JsonKey(name: 'bmiddle_pic')
  String bmiddlePic;

  @JsonKey(name: 'original_pic')
  String originalPic;

  @JsonKey(name: 'is_paid')
  bool isPaid;

  @JsonKey(name: 'mblog_vip_type')
  int mblogVipType;

  @JsonKey(name: 'user')
  User user;

  @JsonKey(name: 'annotations')
  List<Annotations> annotations;

  @JsonKey(name: 'reposts_count')
  int repostsCount;

  @JsonKey(name: 'comments_count')
  int commentsCount;

  @JsonKey(name: 'attitudes_count')
  int attitudesCount;

  @JsonKey(name: 'pending_approval_count')
  int pendingApprovalCount;

  @JsonKey(name: 'isLongText')
  bool isLongText;

  @JsonKey(name: 'reward_exhibition_type')
  int rewardExhibitionType;

  @JsonKey(name: 'hide_flag')
  int hideFlag;

  @JsonKey(name: 'mlevel')
  int mlevel;

  @JsonKey(name: 'biz_feature')
  int bizFeature;

  @JsonKey(name: 'hasActionTypeCard')
  int hasActionTypeCard;

  @JsonKey(name: 'darwin_tags')
  List<dynamic> darwinTags;

  @JsonKey(name: 'hot_weibo_tags')
  List<dynamic> hotWeiboTags;

  @JsonKey(name: 'text_tag_tips')
  List<dynamic> textTagTips;

  @JsonKey(name: 'mblogtype')
  int mblogtype;

  @JsonKey(name: 'rid')
  String rid;

  @JsonKey(name: 'userType')
  int userType;

  @JsonKey(name: 'more_info_type')
  int moreInfoType;

  @JsonKey(name: 'number_display_strategy')
  Number_display_strategy numberDisplayStrategy;

  @JsonKey(name: 'positive_recom_flag')
  int positiveRecomFlag;

  @JsonKey(name: 'enable_comment_guide')
  bool enableCommentGuide;

  @JsonKey(name: 'content_auth')
  int contentAuth;

  @JsonKey(name: 'gif_ids')
  String gifIds;

  @JsonKey(name: 'is_show_bulletin')
  int isShowBulletin;

  @JsonKey(name: 'comment_manage_info')
  Comment_manage_info commentManageInfo;

  @JsonKey(name: 'pic_num')
  int picNum;

  @JsonKey(name: 'alchemy_params')
  Alchemy_params alchemyParams;

  Statusess(this.visible,this.createdAt,this.id,this.idstr,this.mid,this.canEdit,this.showAdditionalIndication,this.text,this.textLength,this.sourceAllowclick,this.sourceType,this.source,this.favorited,this.truncated,this.inReplyToStatusId,this.inReplyToUserId,this.inReplyToScreenName,this.picUrls,this.thumbnailPic,this.bmiddlePic,this.originalPic,this.isPaid,this.mblogVipType,this.user,this.annotations,this.repostsCount,this.commentsCount,this.attitudesCount,this.pendingApprovalCount,this.isLongText,this.rewardExhibitionType,this.hideFlag,this.mlevel,this.bizFeature,this.hasActionTypeCard,this.darwinTags,this.hotWeiboTags,this.textTagTips,this.mblogtype,this.rid,this.userType,this.moreInfoType,this.numberDisplayStrategy,this.positiveRecomFlag,this.enableCommentGuide,this.contentAuth,this.gifIds,this.isShowBulletin,this.commentManageInfo,this.picNum,this.alchemyParams,);

  factory Statusess.fromJson(Map<String, dynamic> srcJson) => _$StatusessFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StatusessToJson(this);

}

  
@JsonSerializable()
  class Visible extends Object {

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'list_id')
  int listId;

  Visible(this.type,this.listId,);

  factory Visible.fromJson(Map<String, dynamic> srcJson) => _$VisibleFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VisibleToJson(this);

}

  
@JsonSerializable()
  class Pic_urls extends Object {

  @JsonKey(name: 'thumbnail_pic')
  String thumbnailPic;

  Pic_urls(this.thumbnailPic,);

  factory Pic_urls.fromJson(Map<String, dynamic> srcJson) => _$Pic_urlsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Pic_urlsToJson(this);

}

  
@JsonSerializable()
  class User extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'idstr')
  String idstr;

  @JsonKey(name: 'class')
  int classs;

  @JsonKey(name: 'screen_name')
  String screenName;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'province')
  String province;

  @JsonKey(name: 'city')
  String city;

  @JsonKey(name: 'location')
  String location;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'profile_image_url')
  String profileImageUrl;

  @JsonKey(name: 'cover_image')
  String coverImage;

  @JsonKey(name: 'cover_image_phone')
  String coverImagePhone;

  @JsonKey(name: 'profile_url')
  String profileUrl;

  @JsonKey(name: 'domain')
  String domain;

  @JsonKey(name: 'weihao')
  String weihao;

  @JsonKey(name: 'gender')
  String gender;

  @JsonKey(name: 'followers_count')
  int followersCount;

  @JsonKey(name: 'friends_count')
  int friendsCount;

  @JsonKey(name: 'pagefriends_count')
  int pagefriendsCount;

  @JsonKey(name: 'statuses_count')
  int statusesCount;

  @JsonKey(name: 'video_status_count')
  int videoStatusCount;

  @JsonKey(name: 'favourites_count')
  int favouritesCount;

  @JsonKey(name: 'created_at')
  String createdAt;

  @JsonKey(name: 'following')
  bool following;

  @JsonKey(name: 'allow_all_act_msg')
  bool allowAllActMsg;

  @JsonKey(name: 'geo_enabled')
  bool geoEnabled;

  @JsonKey(name: 'verified')
  bool verified;

  @JsonKey(name: 'verified_type')
  int verifiedType;

  @JsonKey(name: 'remark')
  String remark;

  @JsonKey(name: 'insecurity')
  Insecurity insecurity;

  @JsonKey(name: 'ptype')
  int ptype;

  @JsonKey(name: 'allow_all_comment')
  bool allowAllComment;

  @JsonKey(name: 'avatar_large')
  String avatarLarge;

  @JsonKey(name: 'avatar_hd')
  String avatarHd;

  @JsonKey(name: 'verified_reason')
  String verifiedReason;

  @JsonKey(name: 'verified_trade')
  String verifiedTrade;

  @JsonKey(name: 'verified_reason_url')
  String verifiedReasonUrl;

  @JsonKey(name: 'verified_source')
  String verifiedSource;

  @JsonKey(name: 'verified_source_url')
  String verifiedSourceUrl;

  @JsonKey(name: 'verified_state')
  int verifiedState;

  @JsonKey(name: 'verified_level')
  int verifiedLevel;

  @JsonKey(name: 'verified_type_ext')
  int verifiedTypeExt;

  @JsonKey(name: 'pay_remind')
  int payRemind;

  @JsonKey(name: 'pay_date')
  String payDate;

  @JsonKey(name: 'has_service_tel')
  bool hasServiceTel;

  @JsonKey(name: 'verified_reason_modified')
  String verifiedReasonModified;

  @JsonKey(name: 'verified_contact_name')
  String verifiedContactName;

  @JsonKey(name: 'verified_contact_email')
  String verifiedContactEmail;

  @JsonKey(name: 'verified_contact_mobile')
  String verifiedContactMobile;

  @JsonKey(name: 'follow_me')
  bool followMe;

  @JsonKey(name: 'like')
  bool like;

  @JsonKey(name: 'like_me')
  bool likeMe;

  @JsonKey(name: 'online_status')
  int onlineStatus;

  @JsonKey(name: 'bi_followers_count')
  int biFollowersCount;

  @JsonKey(name: 'lang')
  String lang;

  @JsonKey(name: 'star')
  int star;

  @JsonKey(name: 'mbtype')
  int mbtype;

  @JsonKey(name: 'mbrank')
  int mbrank;

  @JsonKey(name: 'block_word')
  int blockWord;

  @JsonKey(name: 'block_app')
  int blockApp;

  @JsonKey(name: 'credit_score')
  int creditScore;

  @JsonKey(name: 'user_ability')
  int userAbility;

  @JsonKey(name: 'urank')
  int urank;

  @JsonKey(name: 'story_read_state')
  int storyReadState;

  @JsonKey(name: 'vclub_member')
  int vclubMember;

  @JsonKey(name: 'is_teenager')
  int isTeenager;

  @JsonKey(name: 'is_guardian')
  int isGuardian;

  @JsonKey(name: 'is_teenager_list')
  int isTeenagerList;

  @JsonKey(name: 'special_follow')
  bool specialFollow;

  @JsonKey(name: 'tab_manage')
  String tabManage;

  User(this.id,this.idstr,this.classs,this.screenName,this.name,this.province,this.city,this.location,this.description,this.url,this.profileImageUrl,this.coverImage,this.coverImagePhone,this.profileUrl,this.domain,this.weihao,this.gender,this.followersCount,this.friendsCount,this.pagefriendsCount,this.statusesCount,this.videoStatusCount,this.favouritesCount,this.createdAt,this.following,this.allowAllActMsg,this.geoEnabled,this.verified,this.verifiedType,this.remark,this.insecurity,this.ptype,this.allowAllComment,this.avatarLarge,this.avatarHd,this.verifiedReason,this.verifiedTrade,this.verifiedReasonUrl,this.verifiedSource,this.verifiedSourceUrl,this.verifiedState,this.verifiedLevel,this.verifiedTypeExt,this.payRemind,this.payDate,this.hasServiceTel,this.verifiedReasonModified,this.verifiedContactName,this.verifiedContactEmail,this.verifiedContactMobile,this.followMe,this.like,this.likeMe,this.onlineStatus,this.biFollowersCount,this.lang,this.star,this.mbtype,this.mbrank,this.blockWord,this.blockApp,this.creditScore,this.userAbility,this.urank,this.storyReadState,this.vclubMember,this.isTeenager,this.isGuardian,this.isTeenagerList,this.specialFollow,this.tabManage,);

  factory User.fromJson(Map<String, dynamic> srcJson) => _$UserFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserToJson(this);

}

  
@JsonSerializable()
  class Insecurity extends Object {

  @JsonKey(name: 'sexual_content')
  bool sexualContent;

  Insecurity(this.sexualContent,);

  factory Insecurity.fromJson(Map<String, dynamic> srcJson) => _$InsecurityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$InsecurityToJson(this);

}

  
@JsonSerializable()
  class Annotations extends Object {

  @JsonKey(name: 'uid')
  String uid;

  @JsonKey(name: 'with_video')
  bool withVideo;

  @JsonKey(name: 'item_id')
  String itemId;

  @JsonKey(name: 'time')
  int time;

  @JsonKey(name: 'type')
  String type;

  Annotations(this.uid,this.withVideo,this.itemId,this.time,this.type,);

  factory Annotations.fromJson(Map<String, dynamic> srcJson) => _$AnnotationsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AnnotationsToJson(this);

}

  
@JsonSerializable()
  class Number_display_strategy extends Object {

  @JsonKey(name: 'apply_scenario_flag')
  int applyScenarioFlag;

  @JsonKey(name: 'display_text_min_number')
  int displayTextMinNumber;

  @JsonKey(name: 'display_text')
  String displayText;

  Number_display_strategy(this.applyScenarioFlag,this.displayTextMinNumber,this.displayText,);

  factory Number_display_strategy.fromJson(Map<String, dynamic> srcJson) => _$Number_display_strategyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Number_display_strategyToJson(this);

}

  
@JsonSerializable()
  class Comment_manage_info extends Object {

  @JsonKey(name: 'comment_permission_type')
  int commentPermissionType;

  @JsonKey(name: 'approval_comment_type')
  int approvalCommentType;

  Comment_manage_info(this.commentPermissionType,this.approvalCommentType,);

  factory Comment_manage_info.fromJson(Map<String, dynamic> srcJson) => _$Comment_manage_infoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Comment_manage_infoToJson(this);

}

  
@JsonSerializable()
  class Alchemy_params extends Object {

  @JsonKey(name: 'comment_guide_type')
  int commentGuideType;

  Alchemy_params(this.commentGuideType,);

  factory Alchemy_params.fromJson(Map<String, dynamic> srcJson) => _$Alchemy_paramsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Alchemy_paramsToJson(this);

}

  
