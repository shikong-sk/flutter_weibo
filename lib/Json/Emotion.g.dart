// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Emotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmotionItem _$EmotionItemFromJson(Map<String, dynamic> json) {
  return EmotionItem()
    ..phrase = json['phrase'] as String
    ..type = json['type'] as String
    ..url = json['url'] as String
    ..hot = json['hot'] as bool
    ..common = json['common'] as bool
    ..category = json['category'] as String
    ..icon = json['icon'] as String
    ..value = json['value'] as String
    ..picid = json['picid'] as String;
}

Map<String, dynamic> _$EmotionItemToJson(EmotionItem instance) =>
    <String, dynamic>{
      'phrase': instance.phrase,
      'type': instance.type,
      'url': instance.url,
      'hot': instance.hot,
      'common': instance.common,
      'category': instance.category,
      'icon': instance.icon,
      'value': instance.value,
      'picid': instance.picid,
    };
