class ProfileResponse {
  bool? statusCode;
  Data? data;

  ProfileResponse({
    this.statusCode,
    this.data,
  });

  ProfileResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as bool?;
    data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['data'] = data?.toJson();
    return json;
  }
}

class Data {
  int? id;
  String? name;
  String? email;
  String? phone;
  dynamic country;
  dynamic state;
  dynamic city;
  dynamic zipcode;
  dynamic address;
  dynamic bankName;
  dynamic accountName;
  dynamic accountNumber;
  dynamic image;
  dynamic emailVerifiedAt;
  String? usertype;
  String? createdAt;
  String? updatedAt;

  Data({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.country,
    this.state,
    this.city,
    this.zipcode,
    this.address,
    this.bankName,
    this.accountName,
    this.accountNumber,
    this.image,
    this.emailVerifiedAt,
    this.usertype,
    this.createdAt,
    this.updatedAt,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    email = json['email'] as String?;
    phone = json['phone'] as String?;
    country = json['country'];
    state = json['state'];
    city = json['city'];
    zipcode = json['zipcode'];
    address = json['address'];
    bankName = json['bank_name'];
    accountName = json['account_name'];
    accountNumber = json['account_number'];
    image = json['image'];
    emailVerifiedAt = json['email_verified_at'];
    usertype = json['usertype'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['email'] = email;
    json['phone'] = phone;
    json['country'] = country;
    json['state'] = state;
    json['city'] = city;
    json['zipcode'] = zipcode;
    json['address'] = address;
    json['bank_name'] = bankName;
    json['account_name'] = accountName;
    json['account_number'] = accountNumber;
    json['image'] = image;
    json['email_verified_at'] = emailVerifiedAt;
    json['usertype'] = usertype;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    return json;
  }
}