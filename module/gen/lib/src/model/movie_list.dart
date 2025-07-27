import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:gen/src/model/movie_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'movie_list.g.dart';

@JsonSerializable()
@immutable
final class MovieList extends BaseModel<MovieList> with EquatableMixin {
  final Response? response;
  final MovieData? data;

  MovieList({
    this.response,
    this.data,
  });

  factory MovieList.fromJson(Map<String, dynamic> json) => _$MovieListFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MovieListToJson(this);

  @override
  List<Object?> get props => [response, data];

  MovieList copyWith({
    Response? response,
    MovieData? data,
  }) {
    return MovieList(
      response: response ?? this.response,
      data: data ?? this.data,
    );
  }
}
