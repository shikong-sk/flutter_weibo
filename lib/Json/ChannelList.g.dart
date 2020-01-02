// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChannelList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelList _$ChannelListFromJson(Map<String, dynamic> json) {
  return ChannelList(
    json['ok'] as int,
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChannelListToJson(ChannelList instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    (json['groups'] as List)
        ?.map((e) =>
            e == null ? null : Groups.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['channel'] as List)
        ?.map((e) =>
            e == null ? null : Channel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['hot'] == null
        ? null
        : Hot.fromJson(json['hot'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'groups': instance.groups,
      'channel': instance.channel,
      'hot': instance.hot,
    };

Groups _$GroupsFromJson(Map<String, dynamic> json) {
  return Groups(
    json['gid'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$GroupsToJson(Groups instance) => <String, dynamic>{
      'gid': instance.gid,
      'name': instance.name,
    };

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return Channel(
    json['gid'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'gid': instance.gid,
      'name': instance.name,
    };

Hot _$HotFromJson(Map<String, dynamic> json) {
  return Hot(
    json['ok'] as int,
    json['hotWord'] as String,
    json['scheme'] as String,
  );
}

Map<String, dynamic> _$HotToJson(Hot instance) => <String, dynamic>{
      'ok': instance.ok,
      'hotWord': instance.hotWord,
      'scheme': instance.scheme,
    };
