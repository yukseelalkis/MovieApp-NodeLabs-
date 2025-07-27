import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'favorite_data.g.dart';

@JsonSerializable()
@immutable
final class FavoriteData extends BaseModel<FavoriteData> with EquatableMixin {
  final Movie? movie;
  final String? action;

  FavoriteData({
    this.movie,
    this.action,
  });

  factory FavoriteData.fromJson(Map<String, dynamic> json) =>
      _$FavoriteDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FavoriteDataToJson(this);

  @override
  List<Object?> get props => [movie, action];

  FavoriteData copyWith({
    Movie? movie,
    String? action,
  }) {
    return FavoriteData(
      movie: movie ?? this.movie,
      action: action ?? this.action,
    );
  }
}
