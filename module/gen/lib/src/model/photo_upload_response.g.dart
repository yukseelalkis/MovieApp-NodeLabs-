// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoUploadResponse _$PhotoUploadResponseFromJson(Map<String, dynamic> json) =>
    PhotoUploadResponse(
      response: json['response'] == null
          ? null
          : Response.fromJson(json['response'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : PhotoUploadData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhotoUploadResponseToJson(
        PhotoUploadResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
    };
