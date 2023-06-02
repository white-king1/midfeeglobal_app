class DepositResponse {
  bool? statusCode;
  Deposit? deposit;

  DepositResponse({
    this.statusCode,
    this.deposit,
  });

  DepositResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as bool?;
    deposit = (json['deposit'] as Map<String,dynamic>?) != null ? Deposit.fromJson(json['deposit'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['deposit'] = deposit?.toJson();
    return json;
  }
}

class Deposit {
  int? userId;
  String? status;
  String? amount;
  int? transactionTypeId;
  int? isCredit;
  String? updatedAt;
  String? createdAt;
  int? id;

  Deposit({
    this.userId,
    this.status,
    this.amount,
    this.transactionTypeId,
    this.isCredit,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  Deposit.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'] as int?;
    status = json['status'] as String?;
    amount = json['amount'] as String?;
    transactionTypeId = json['transaction_type_id'] as int?;
    isCredit = json['is_credit'] as int?;
    updatedAt = json['updated_at'] as String?;
    createdAt = json['created_at'] as String?;
    id = json['id'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['user_id'] = userId;
    json['status'] = status;
    json['amount'] = amount;
    json['transaction_type_id'] = transactionTypeId;
    json['is_credit'] = isCredit;
    json['updated_at'] = updatedAt;
    json['created_at'] = createdAt;
    json['id'] = id;
    return json;
  }
}