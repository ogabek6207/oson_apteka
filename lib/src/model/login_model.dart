// To parse this JSON data, do
//
//     final aboutUsModel = aboutUsModelFromJson(jsonString);

import 'dart:convert';

LoginModel aboutUsModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String aboutUsModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.name,
    required this.description,
    required this.renders,
    required this.parses,
    required this.actions,
  });

  String name;
  String description;
  List<String> renders;
  List<String> parses;
  Actions actions;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        name: json["name"] ?? "",
        description: json["description"] ?? "",
        renders: List<String>.from(json["renders"].map((x) => x)),
        parses: List<String>.from(json["parses"].map((x) => x)),
        actions: Actions.fromJson(json["actions"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "renders": List<dynamic>.from(renders.map((x) => x)),
        "parses": List<dynamic>.from(parses.map((x) => x)),
        "actions": actions.toJson(),
      };
}

class Actions {
  Actions({
    required this.post,
  });

  Post post;

  factory Actions.fromJson(Map<String, dynamic> json) => Actions(
        post: Post.fromJson(json["POST"]),
      );

  Map<String, dynamic> toJson() => {
        "POST": post.toJson(),
      };
}

class Post {
  Post({
    required this.username,
    required this.password,
  });

  Password username;
  Password password;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        username: Password.fromJson(json["username"]),
        password: Password.fromJson(json["password"]),
      );

  Map<String, dynamic> toJson() => {
        "username": username.toJson() ?? "",
        "password": password.toJson() ?? "",
      };
}

class Password {
  Password({
    required this.type,
    required this.required,
    required this.readOnly,
    required this.label,
  });

  String type;
  bool required;
  bool readOnly;
  String label;

  factory Password.fromJson(Map<String, dynamic> json) => Password(
        type: json["type"],
        required: json["required"],
        readOnly: json["read_only"],
        label: json["label"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "required": required,
        "read_only": readOnly,
        "label": label,
      };
}
