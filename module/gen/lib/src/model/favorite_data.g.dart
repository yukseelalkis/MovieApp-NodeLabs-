// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteData _$FavoriteDataFromJson(Map<String, dynamic> json) => FavoriteData(
      movie: json['movie'] == null
          ? null
          : Movie.fromJson(json['movie'] as Map<String, dynamic>),
      action: json['action'] as String?,
    );

Map<String, dynamic> _$FavoriteDataToJson(FavoriteData instance) =>
    <String, dynamic>{
      'movie': instance.movie,
      'action': instance.action,
    };
