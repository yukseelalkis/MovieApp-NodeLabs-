// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteMoviesResponse _$FavoriteMoviesResponseFromJson(
        Map<String, dynamic> json) =>
    FavoriteMoviesResponse(
      response: json['response'] == null
          ? null
          : Response.fromJson(json['response'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FavoriteMoviesResponseToJson(
        FavoriteMoviesResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
    };
