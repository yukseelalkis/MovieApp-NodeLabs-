// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_upload_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoUploadData _$PhotoUploadDataFromJson(Map<String, dynamic> json) =>
    PhotoUploadData(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$PhotoUploadDataToJson(PhotoUploadData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
    };
