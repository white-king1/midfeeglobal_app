class WithdrawalResponse {
  bool? statusCode;
  Withdraw? withdraw;

  WithdrawalResponse({
    this.statusCode,
    this.withdraw,
  });

  WithdrawalResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as bool?;
    withdraw = (json['withdraw'] as Map<String,dynamic>?) != null ? Withdraw.fromJson(json['withdraw'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['withdraw'] = withdraw?.toJson();
    return json;
  }
}

class Withdraw {
  String? details;
  int? userId;
  String? amount;
  int? transactionTypeId;
  int? isCredit;
  String? updatedAt;
  String? createdAt;
  int? id;

  Withdraw({
    this.details,
    this.userId,
    this.amount,
    this.transactionTypeId,
    this.isCredit,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  Withdraw.fromJson(Map<String, dynamic> json) {
    details = json['details'] as String?;
    userId = json['user_id'] as int?;
    amount = json['amount'] as String?;
    transactionTypeId = json['transaction_type_id'] as int?;
    isCredit = json['is_credit'] as int?;
    updatedAt = json['updated_at'] as String?;
    createdAt = json['created_at'] as String?;
    id = json['id'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['details'] = details;
    json['user_id'] = userId;
    json['amount'] = amount;
    json['transaction_type_id'] = transactionTypeId;
    json['is_credit'] = isCredit;
    json['updated_at'] = updatedAt;
    json['created_at'] = createdAt;
    json['id'] = id;
    return json;
  }
}