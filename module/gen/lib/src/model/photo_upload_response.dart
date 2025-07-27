import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:gen/src/model/photo_upload_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'photo_upload_response.g.dart';

@JsonSerializable()
@immutable
final class PhotoUploadResponse extends BaseModel<PhotoUploadResponse>
    with EquatableMixin {
  final Response? response;
  final PhotoUploadData? data;

  PhotoUploadResponse({
    this.response,
    this.data,
  });

  factory PhotoUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotoUploadResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhotoUploadResponseToJson(this);

  @override
  List<Object?> get props => [response, data];

  PhotoUploadResponse copyWith({
    Response? response,
    PhotoUploadData? data,
  }) {
    return PhotoUploadResponse(
      response: response ?? this.response,
      data: data ?? this.data,
    );
  }
}
