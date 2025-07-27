import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'movies.dart';
import 'pagination.dart';
part 'movie_data.g.dart';

@JsonSerializable()
@immutable
final class MovieData extends BaseModel<MovieData> with EquatableMixin {
  final List<Movie>? movies;
  final Pagination? pagination;

  MovieData({
    this.movies,
    this.pagination,
  });

  factory MovieData.fromJson(Map<String, dynamic> json) => _$MovieDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MovieDataToJson(this);

  @override
  List<Object?> get props => [movies, pagination];

  MovieData copyWith({
    List<Movie>? movies,
    Pagination? pagination,
  }) {
    return MovieData(
      movies: movies ?? this.movies,
      pagination: pagination ?? this.pagination,
    );
  }
}
