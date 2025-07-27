import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'movies.g.dart';

@JsonSerializable()
@immutable
final class Movie extends BaseModel<Movie> with EquatableMixin {
  final String? id;
  final String? Title;
  final String? Year;
  final String? Rated;
  final String? Released;
  final String? Runtime;
  final String? Genre;
  final String? Director;
  final String? Writer;
  final String? Actors;
  final String? Plot;
  final String? Language;
  final String? Country;
  final String? Awards;
  final String? Poster;
  final String? Metascore;
  final String? imdbRating;
  final String? imdbVotes;
  final String? imdbID;
  final String? Type;
  final String? Response;
  final List<String>? Images;
  final bool? ComingSoon;
  final bool? isFavorite;

  Movie({
    this.id,
    this.Title,
    this.Year,
    this.Rated,
    this.Released,
    this.Runtime,
    this.Genre,
    this.Director,
    this.Writer,
    this.Actors,
    this.Plot,
    this.Language,
    this.Country,
    this.Awards,
    this.Poster,
    this.Metascore,
    this.imdbRating,
    this.imdbVotes,
    this.imdbID,
    this.Type,
    this.Response,
    this.Images,
    this.ComingSoon,
    this.isFavorite,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  List<Object?> get props => [
        id,
        Title,
        Year,
        Rated,
        Released,
        Runtime,
        Genre,
        Director,
        Writer,
        Actors,
        Plot,
        Language,
        Country,
        Awards,
        Poster,
        Metascore,
        imdbRating,
        imdbVotes,
        imdbID,
        Type,
        Response,
        Images,
        ComingSoon,
        isFavorite
      ];

  Movie copyWith({
    String? id,
    String? Title,
    String? Year,
    String? Rated,
    String? Released,
    String? Runtime,
    String? Genre,
    String? Director,
    String? Writer,
    String? Actors,
    String? Plot,
    String? Language,
    String? Country,
    String? Awards,
    String? Poster,
    String? Metascore,
    String? imdbRating,
    String? imdbVotes,
    String? imdbID,
    String? Type,
    String? Response,
    List<String>? Images,
    bool? ComingSoon,
    bool? isFavorite,
  }) {
    return Movie(
      id: id ?? this.id,
      Title: Title ?? this.Title,
      Year: Year ?? this.Year,
      Rated: Rated ?? this.Rated,
      Released: Released ?? this.Released,
      Runtime: Runtime ?? this.Runtime,
      Genre: Genre ?? this.Genre,
      Director: Director ?? this.Director,
      Writer: Writer ?? this.Writer,
      Actors: Actors ?? this.Actors,
      Plot: Plot ?? this.Plot,
      Language: Language ?? this.Language,
      Country: Country ?? this.Country,
      Awards: Awards ?? this.Awards,
      Poster: Poster ?? this.Poster,
      Metascore: Metascore ?? this.Metascore,
      imdbRating: imdbRating ?? this.imdbRating,
      imdbVotes: imdbVotes ?? this.imdbVotes,
      imdbID: imdbID ?? this.imdbID,
      Type: Type ?? this.Type,
      Response: Response ?? this.Response,
      Images: Images ?? this.Images,
      ComingSoon: ComingSoon ?? ComingSoon,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
