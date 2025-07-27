import 'package:flutter/material.dart';
import 'package:gen/src/model/favorite_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'response.dart';
part 'favorite_response.g.dart';

@JsonSerializable()
@immutable
final class FavoriteResponse with EquatableMixin {
  final Response? response;
  final FavoriteData? data;

  FavoriteResponse({
    this.response,
    this.data,
  });

  factory FavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoriteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteResponseToJson(this);

  @override
  List<Object?> get props => [response, data];

  FavoriteResponse copyWith({
    Response? response,
    FavoriteData? data,
  }) {
    return FavoriteResponse(
      response: response ?? this.response,
      data: data ?? this.data,
    );
  }
}
