import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'photo_upload_data.g.dart';

@JsonSerializable()
@immutable
final class PhotoUploadData extends BaseModel<PhotoUploadData> with EquatableMixin {
  final String? id;
  final String? name;
  final String? email;
  final String? photoUrl;

  PhotoUploadData({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
  });

  factory PhotoUploadData.fromJson(Map<String, dynamic> json) =>
      _$PhotoUploadDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhotoUploadDataToJson(this);

  @override
  List<Object?> get props => [id, name, email, photoUrl];

  PhotoUploadData copyWith({
    String? id,
    String? name,
    String? email,
    String? photoUrl,
  }) {
    return PhotoUploadData(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }
}
