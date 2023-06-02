class AcceptOrderResponse {
  bool? statusCode;
  Data? data;

  AcceptOrderResponse({
    this.statusCode,
    this.data,
  });

  AcceptOrderResponse.fromJson(Map<String, dynamic> json) {
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
  int? userId;
  String? transactionId;
  dynamic flwRef;
  String? description;
  String? period;
  int? quantity;
  int? deposit;
  int? charges;
  int? total;
  String? status;
  String? sellerId;
  dynamic buyerId;
  String? createdAt;
  String? updatedAt;

  Data({
    this.id,
    this.userId,
    this.transactionId,
    this.flwRef,
    this.description,
    this.period,
    this.quantity,
    this.deposit,
    this.charges,
    this.total,
    this.status,
    this.sellerId,
    this.buyerId,
    this.createdAt,
    this.updatedAt,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    userId = json['user_id'] as int?;
    transactionId = json['transaction_id'] as String?;
    flwRef = json['flw_ref'];
    description = json['description'] as String?;
    period = json['period'] as String?;
    quantity = json['quantity'] as int?;
    deposit = json['deposit'] as int?;
    charges = json['charges'] as int?;
    total = json['total'] as int?;
    status = json['status'] as String?;
    sellerId = json['seller_id'] as String?;
    buyerId = json['buyer_id'];
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['user_id'] = userId;
    json['transaction_id'] = transactionId;
    json['flw_ref'] = flwRef;
    json['description'] = description;
    json['period'] = period;
    json['quantity'] = quantity;
    json['deposit'] = deposit;
    json['charges'] = charges;
    json['total'] = total;
    json['status'] = status;
    json['seller_id'] = sellerId;
    json['buyer_id'] = buyerId;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    return json;
  }
}