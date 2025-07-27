import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signup.g.dart';

/// ChangePassword class is a model class that contains the properties of the change password.
@JsonSerializable()
@immutable
final class SignUp extends BaseModel<SignUp> with EquatableMixin {
  /// Constructor
  SignUp({this.email, this.password, this.name});

  /// [email] is the email of the user.
  final String? email;

  /// [email] is the email of the user.
  final String? name;

  /// [password] is the password of the user.
  final String? password;

  @override
  SignUp fromJson(Map<String, dynamic> json) => _$SignUpFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SignUpToJson(this);

  @override
  List<Object?> get props => [email, password];

  /// copyWith method for SignUp class
  SignUp copyWith({
    String? email,
    String? password,
    String? name,
  }) {
    return SignUp(
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
    );
  }
}
