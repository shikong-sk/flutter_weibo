import 'package:json_annotation/json_annotation.dart'; 
  
part 'Hotflow.g.dart';


@JsonSerializable()
  class HotFlow extends Object {

  @JsonKey(name: 'ok')
  dynamic ok;

  @JsonKey(name: 'data')
  Data data;

  HotFlow(this.ok,this.data,);

  factory HotFlow.fromJson(Map<dynamic, dynamic> srcJson) => _$HotFlowFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$HotFlowToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'data')
  List<Datas> datas;

  @JsonKey(name: 'total_number')
  dynamic totalNumber;

  @JsonKey(name: 'status')
  Status status;

  @JsonKey(name: 'max_id')
  dynamic maxId;

  @JsonKey(name: 'max')
  dynamic max;

  @JsonKey(name: 'max_id_type')
  dynamic maxIdType;

  Data(this.datas,this.totalNumber,this.status,this.maxId,this.max,this.maxIdType,);

  factory Data.fromJson(Map<dynamic, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class Datas extends Object {

  @JsonKey(name: 'created_at')
  dynamic createdAt;

  @JsonKey(name: 'id')
  dynamic id;

  @JsonKey(name: 'rootid')
  dynamic rootid;

  @JsonKey(name: 'rootidstr')
  dynamic rootidstr;

  @JsonKey(name: 'floor_number')
  dynamic floorNumber;

  @JsonKey(name: 'text')
  dynamic text;

  @JsonKey(name: 'disable_reply')
  dynamic disableReply;

  @JsonKey(name: 'user')
  User user;

  @JsonKey(name: 'mid')
  dynamic mid;

  @JsonKey(name: 'readtimetype')
  dynamic readtimetype;

  @JsonKey(name: 'comments')
  dynamic comments;

  @JsonKey(name: 'max_id')
  dynamic maxId;

  @JsonKey(name: 'total_number')
  dynamic totalNumber;

  @JsonKey(name: 'isLikedByMblogAuthor')
  bool isLikedByMblogAuthor;

  @JsonKey(name: 'more_info_type')
  dynamic moreInfoType;

  @JsonKey(name: 'bid')
  dynamic bid;

  @JsonKey(name: 'source')
  dynamic source;

  @JsonKey(name: 'like_count')
  dynamic likeCount;

  @JsonKey(name: 'liked')
  bool liked;

  Datas(this.createdAt,this.id,this.rootid,this.rootidstr,this.floorNumber,this.text,this.disableReply,this.user,this.mid,this.readtimetype,this.comments,this.maxId,this.totalNumber,this.isLikedByMblogAuthor,this.moreInfoType,this.bid,this.source,this.likeCount,this.liked,);

  factory Datas.fromJson(Map<dynamic, dynamic> srcJson) => _$DatasFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$DatasToJson(this);

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

  @JsonKey(name: 'bind_taobao')
  dynamic bindTaobao;

  @JsonKey(name: 'unread_pool')
  dynamic unreadPool;

  @JsonKey(name: 'unread_pool_ext')
  dynamic unreadPoolExt;

  @JsonKey(name: 'user_name_certificate')
  dynamic userNameCertificate;

  @JsonKey(name: 'wenda_v2')
  dynamic wendaV2;

  @JsonKey(name: 'hongbaofei_2019')
  dynamic hongbaofei2019;

  @JsonKey(name: 'wbzy_2019')
  dynamic wbzy2019;

  Badge(this.bindTaobao,this.unreadPool,this.unreadPoolExt,this.userNameCertificate,this.wendaV2,this.hongbaofei2019,this.wbzy2019,);

  factory Badge.fromJson(Map<dynamic, dynamic> srcJson) => _$BadgeFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$BadgeToJson(this);

}

  
@JsonSerializable()
  class Status extends Object {

  @JsonKey(name: 'comment_manage_info')
  Comment_manage_info commentManageInfo;

  Status(this.commentManageInfo,);

  factory Status.fromJson(Map<dynamic, dynamic> srcJson) => _$StatusFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$StatusToJson(this);

}

  
@JsonSerializable()
  class Comment_manage_info extends Object {

  @JsonKey(name: 'comment_permission_type')
  dynamic commentPermissionType;

  @JsonKey(name: 'approval_comment_type')
  dynamic approvalCommentType;

  Comment_manage_info(this.commentPermissionType,this.approvalCommentType,);

  factory Comment_manage_info.fromJson(Map<dynamic, dynamic> srcJson) => _$Comment_manage_infoFromJson(srcJson);

  Map<dynamic, dynamic> toJson() => _$Comment_manage_infoToJson(this);

}

  
