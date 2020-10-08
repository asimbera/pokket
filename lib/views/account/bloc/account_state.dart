part of 'account_bloc.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState.loading() = _Loading;
  const factory AccountState.loaded(Map<int, Account> accounts) = _Loaded;
}
