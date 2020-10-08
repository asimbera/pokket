part of 'account_bloc.dart';

@freezed
abstract class AccountEvent with _$AccountEvent {
  const factory AccountEvent.load() = _Load;
  const factory AccountEvent.add(Account account) = _Add;
  const factory AccountEvent.delete(Account account) = _Delete;
}
