// 获取频道列表

import 'package:json_annotation/json_annotation.dart';

part 'ChannelList.g.dart';

@JsonSerializable()
  class ChannelList extends Object {

  @JsonKey(name: 'ok')
  int ok;

  @JsonKey(name: 'data')
  Data data;

  ChannelList(this.ok,this.data,);

  factory ChannelList.fromJson(Map<String, dynamic> srcJson) => _$ChannelListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ChannelListToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'groups')
  List<Groups> groups;

  @JsonKey(name: 'channel')
  List<Channel> channel;

  @JsonKey(name: 'hot')
  Hot hot;

  Data(this.groups,this.channel,this.hot,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class Groups extends Object {

  @JsonKey(name: 'gid')
  String gid;

  @JsonKey(name: 'name')
  String name;

  Groups(this.gid,this.name,);

  factory Groups.fromJson(Map<String, dynamic> srcJson) => _$GroupsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GroupsToJson(this);

}

  
@JsonSerializable()
  class Channel extends Object {

  @JsonKey(name: 'gid')
  String gid;

  @JsonKey(name: 'name')
  String name;

  Channel(this.gid,this.name,);

  factory Channel.fromJson(Map<String, dynamic> srcJson) => _$ChannelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ChannelToJson(this);

}

  
@JsonSerializable()
  class Hot extends Object {

  @JsonKey(name: 'ok')
  int ok;

  @JsonKey(name: 'hotWord')
  String hotWord;

  @JsonKey(name: 'scheme')
  String scheme;

  Hot(this.ok,this.hotWord,this.scheme,);

  factory Hot.fromJson(Map<String, dynamic> srcJson) => _$HotFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HotToJson(this);

}
