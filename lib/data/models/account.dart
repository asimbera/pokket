import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.g.dart';
part 'account.freezed.dart';

@freezed
abstract class Account implements _$Account {
  const Account._();
  const factory Account({
    @required String name,
    @required int type,
    @required int currency,
    @required int icon,
    @required int color,
    @required String description,
    @required double initialBalance,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
