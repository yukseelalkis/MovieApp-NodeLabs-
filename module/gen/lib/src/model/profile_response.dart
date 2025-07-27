import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:gen/src/model/profile_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'profile_response.g.dart';

@JsonSerializable()
@immutable
final class ProfileResponse extends BaseModel<ProfileData> with EquatableMixin {
  final Response? response;
  final ProfileData? data;

  ProfileResponse({
    this.response,
    this.data,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);

  @override
  List<Object?> get props => [response, data];

  ProfileResponse copyWith({
    Response? response,
    ProfileData? data,
  }) {
    return ProfileResponse(
      response: response ?? this.response,
      data: data ?? this.data,
    );
  }
}
