import 'package:meta/meta.dart';

class Account {
  // lateinit in dao
  int id;

  final String name;
  final double initialBalance;
  final String type;
  final String createdOn;

  Account({
    @required this.name,
    @required this.initialBalance,
    @required this.type,
    @required this.createdOn,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'initial_balance': initialBalance,
      'type': type,
      'created_on': createdOn,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      name: map['name'],
      initialBalance: map['initial_balance'],
      type: map['type'],
      createdOn: map['created_on'],
    );
  }
}
