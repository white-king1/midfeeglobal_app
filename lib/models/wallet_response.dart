class WalletResponse {
  bool? statusCode;
  List<Wallet>? wallet;

  WalletResponse({
    this.statusCode,
    this.wallet,
  });

  WalletResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as bool?;
    wallet = (json['Wallet'] as List?)?.map((dynamic e) => Wallet.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['Wallet'] = wallet?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Wallet {
  int? id;
  int? userId;
  int? balance;
  int? pendingBalance;
  String? createdAt;
  String? updatedAt;

  Wallet({
    this.id,
    this.userId,
    this.balance,
    this.pendingBalance,
    this.createdAt,
    this.updatedAt,
  });

  Wallet.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    userId = json['user_id'] as int?;
    balance = json['balance'] as int?;
    pendingBalance = json['pending_balance'] as int?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['user_id'] = userId;
    json['balance'] = balance;
    json['pending_balance'] = pendingBalance;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    return json;
  }
}