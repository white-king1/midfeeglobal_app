class BuyertransResponse {
  bool? statusCode;
  List<Buyer>? buyer;

  BuyertransResponse({
    this.statusCode,
    this.buyer,
  });

  BuyertransResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as bool?;
    buyer = (json['Buyer'] as List?)?.map((dynamic e) => Buyer.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['Buyer'] = buyer?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Buyer {
  int? id;
  int? userId;
  String? transactionId;
  String? flwRef;
  String? description;
  String? period;
  int? quantity;
  int? deposit;
  int? charges;
  int? total;
  String? status;
  String? sellerId;
  String? buyerId;
  String? createdAt;
  String? updatedAt;

  Buyer({
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

  Buyer.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    userId = json['user_id'] as int?;
    transactionId = json['transaction_id'] as String?;
    flwRef = json['flw_ref'] as String?;
    description = json['description'] as String?;
    period = json['period'] as String?;
    quantity = json['quantity'] as int?;
    deposit = json['deposit'] as int?;
    charges = json['charges'] as int?;
    total = json['total'] as int?;
    status = json['status'] as String?;
    sellerId = json['seller_id'] as String?;
    buyerId = json['buyer_id'] as String?;
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