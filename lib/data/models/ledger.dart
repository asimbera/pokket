import 'package:meta/meta.dart';

class Ledger {
  // lateinit in dao
  int id;

  final double amount;
  final String txnType;
  final String txnTo;
  final int accountId;
  final int categoryId;
  final String note;

  Ledger({
    @required this.amount,
    @required this.txnType,
    @required this.txnTo,
    @required this.accountId,
    @required this.categoryId,
    @required this.note,
  });

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'txn_type': txnType,
      'txn_to': txnTo,
      'account_id': accountId,
      'category_id': categoryId,
      'note': note,
    };
  }

  factory Ledger.fromMap(Map<String, dynamic> map) {
    return Ledger(
      amount: map['amount'],
      txnType: map['txn_type'],
      txnTo: map['txn_to'],
      accountId: map['account_id'],
      categoryId: map['category_id'],
      note: map['note'],
    );
  }
}
