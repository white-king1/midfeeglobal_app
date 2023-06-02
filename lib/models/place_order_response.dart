class PlaceorderResponse {
  bool? statusCode;
  Place? place;

  PlaceorderResponse({
    this.statusCode,
    this.place,
  });

  PlaceorderResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as bool?;
    place = (json['place'] as Map<String,dynamic>?) != null ? Place.fromJson(json['place'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['place'] = place?.toJson();
    return json;
  }
}

class Place {
  String? transactionId;
  int? userId;
  String? description;
  String? period;
  String? quantity;
  String? deposit;
  int? charges;
  int? total;
  int? sellerId;
  String? updatedAt;
  String? createdAt;
  int? id;

  Place({
    this.transactionId,
    this.userId,
    this.description,
    this.period,
    this.quantity,
    this.deposit,
    this.charges,
    this.total,
    this.sellerId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  Place.fromJson(Map<String, dynamic> json) {
    transactionId = json['transaction_id'] as String?;
    userId = json['user_id'] as int?;
    description = json['description'] as String?;
    period = json['period'] as String?;
    quantity = json['quantity'] as String?;
    deposit = json['deposit'] as String?;
    charges = json['charges'] as int?;
    total = json['total'] as int?;
    sellerId = json['seller_id'] as int?;
    updatedAt = json['updated_at'] as String?;
    createdAt = json['created_at'] as String?;
    id = json['id'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['transaction_id'] = transactionId;
    json['user_id'] = userId;
    json['description'] = description;
    json['period'] = period;
    json['quantity'] = quantity;
    json['deposit'] = deposit;
    json['charges'] = charges;
    json['total'] = total;
    json['seller_id'] = sellerId;
    json['updated_at'] = updatedAt;
    json['created_at'] = createdAt;
    json['id'] = id;
    return json;
  }
}