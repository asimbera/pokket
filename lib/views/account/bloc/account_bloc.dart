import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokket/data/daos/account_dao.dart';
import 'package:pokket/data/models/account.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(_Loading());
  AccountDao _accountDao = AccountDao();

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    yield* event.when(
      load: _reloadState,
      add: _addAccount,
      delete: _deleteAccount,
    );
  }

  Stream<AccountState> _reloadState() async* {
    yield _Loading();
    final accounts = await _accountDao.getAll();
    if (accounts.isEmpty) {
      final cashAccount = Account(
        name: 'Wallet',
        type: 1,
        currency: 1,
        icon: 2,
        color: 2,
        description: 'Default Cash Wallet',
        initialBalance: 0,
      );

      final bankAccount = Account(
        name: 'Bank',
        type: 2,
        currency: 1,
        icon: 1,
        color: 1,
        description: 'Default Bank Wallet',
        initialBalance: 0,
      );
      await _accountDao.insert(cashAccount);
      await _accountDao.insert(bankAccount);
    }
    final _accounts = await _accountDao.getAll();

    yield _Loaded(_accounts);
  }

  Stream<AccountState> _addAccount(Account account) async* {
    await _accountDao.insert(account);
    yield* _reloadState();
  }

  Stream<AccountState> _deleteAccount(Account account) async* {
    yield* _reloadState();
  }
}
