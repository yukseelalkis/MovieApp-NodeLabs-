// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUp _$SignUpFromJson(Map<String, dynamic> json) => SignUp(
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SignUpToJson(SignUp instance) => <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
    };
