import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'profile_data.g.dart';

@JsonSerializable()
@immutable
final class ProfileData extends BaseModel<ProfileData> with EquatableMixin {
  final String? id;
  final String? name;
  final String? email;
  final String? photoUrl;
  final String? token;

  ProfileData({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
    this.token,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) => _$ProfileDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);

  @override
  List<Object?> get props => [id, name, email, photoUrl, token];

  ProfileData copyWith({
    String? id,
    String? name,
    String? email,
    String? photoUrl,
    String? token,
  }) {
    return ProfileData(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      photoUrl: photoUrl ?? this.photoUrl,
      token: token ?? this.token,
    );
  }
}
