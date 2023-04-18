class RegisterResponse {
  bool? statusCode;
  Data? data;
  String? token;

  RegisterResponse({
    this.statusCode,
    this.data,
    this.token,
  });

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as bool?;
    data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;
    token = json['token'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['data'] = data?.toJson();
    json['token'] = token;
    return json;
  }
}

class Data {
  String? name;
  String? email;
  String? phone;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data({
    this.name,
    this.email,
    this.phone,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    email = json['email'] as String?;
    phone = json['phone'] as String?;
    updatedAt = json['updated_at'] as String?;
    createdAt = json['created_at'] as String?;
    id = json['id'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['email'] = email;
    json['phone'] = phone;
    json['updated_at'] = updatedAt;
    json['created_at'] = createdAt;
    json['id'] = id;
    return json;
  }
}