import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

/// ChangePassword class is a model class that contains the properties of the change password.
@JsonSerializable()
@immutable
final class Login extends BaseModel<Login> with EquatableMixin {
  /// Constructor
  Login({this.email, this.password});

  /// [email] is the email of the user.
  final String? email;

  /// [password] is the password of the user.
  final String? password;

  @override
  Login fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginToJson(this);

  @override
  List<Object?> get props => [email, password];

  /// copyWith method for Login class
  Login copyWith({
    String? email,
    String? password,
  }) {
    return Login(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
