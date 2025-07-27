import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'favorite_movie_response.g.dart';

@JsonSerializable()
@immutable
final class FavoriteMoviesResponse extends BaseModel<FavoriteMoviesResponse>
    with EquatableMixin {
  final Response? response;
  final List<Movie>? data;

  FavoriteMoviesResponse({
    this.response,
    this.data,
  });

  factory FavoriteMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoriteMoviesResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FavoriteMoviesResponseToJson(this);

  @override
  List<Object?> get props => [response, data];

  FavoriteMoviesResponse copyWith({
    Response? response,
    List<Movie>? data,
  }) {
    return FavoriteMoviesResponse(
      response: response ?? this.response,
      data: data ?? this.data,
    );
  }
}
