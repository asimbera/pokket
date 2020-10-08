// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountEventTearOff {
  const _$AccountEventTearOff();

// ignore: unused_element
  _Load load() {
    return const _Load();
  }

// ignore: unused_element
  _Add add(Account account) {
    return _Add(
      account,
    );
  }

// ignore: unused_element
  _Delete delete(Account account) {
    return _Delete(
      account,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountEvent = _$AccountEventTearOff();

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result add(Account account),
    @required Result delete(Account account),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result add(Account account),
    Result delete(Account account),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result add(_Add value),
    @required Result delete(_Delete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result add(_Add value),
    Result delete(_Delete value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res> implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  final AccountEvent _value;
  // ignore: unused_field
  final $Res Function(AccountEvent) _then;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;
}

/// @nodoc
class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'AccountEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result add(Account account),
    @required Result delete(Account account),
  }) {
    assert(load != null);
    assert(add != null);
    assert(delete != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result add(Account account),
    Result delete(Account account),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result add(_Add value),
    @required Result delete(_Delete value),
  }) {
    assert(load != null);
    assert(add != null);
    assert(delete != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result add(_Add value),
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements AccountEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(_Add _value, $Res Function(_Add) _then)
      : super(_value, (v) => _then(v as _Add));

  @override
  _Add get _value => super._value as _Add;

  @override
  $Res call({
    Object account = freezed,
  }) {
    return _then(_Add(
      account == freezed ? _value.account : account as Account,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
class _$_Add implements _Add {
  const _$_Add(this.account) : assert(account != null);

  @override
  final Account account;

  @override
  String toString() {
    return 'AccountEvent.add(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Add &&
            (identical(other.account, account) ||
                const DeepCollectionEquality().equals(other.account, account)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(account);

  @override
  _$AddCopyWith<_Add> get copyWith =>
      __$AddCopyWithImpl<_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result add(Account account),
    @required Result delete(Account account),
  }) {
    assert(load != null);
    assert(add != null);
    assert(delete != null);
    return add(account);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result add(Account account),
    Result delete(Account account),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result add(_Add value),
    @required Result delete(_Delete value),
  }) {
    assert(load != null);
    assert(add != null);
    assert(delete != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result add(_Add value),
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements AccountEvent {
  const factory _Add(Account account) = _$_Add;

  Account get account;
  _$AddCopyWith<_Add> get copyWith;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object account = freezed,
  }) {
    return _then(_Delete(
      account == freezed ? _value.account : account as Account,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
class _$_Delete implements _Delete {
  const _$_Delete(this.account) : assert(account != null);

  @override
  final Account account;

  @override
  String toString() {
    return 'AccountEvent.delete(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.account, account) ||
                const DeepCollectionEquality().equals(other.account, account)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(account);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result add(Account account),
    @required Result delete(Account account),
  }) {
    assert(load != null);
    assert(add != null);
    assert(delete != null);
    return delete(account);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result add(Account account),
    Result delete(Account account),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result add(_Add value),
    @required Result delete(_Delete value),
  }) {
    assert(load != null);
    assert(add != null);
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result add(_Add value),
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AccountEvent {
  const factory _Delete(Account account) = _$_Delete;

  Account get account;
  _$DeleteCopyWith<_Delete> get copyWith;
}

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(Map<int, Account> accounts) {
    return _Loaded(
      accounts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(Map<int, Account> accounts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(Map<int, Account> accounts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AccountState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(Map<int, Account> accounts),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(Map<int, Account> accounts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AccountState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Map<int, Account> accounts});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object accounts = freezed,
  }) {
    return _then(_Loaded(
      accounts == freezed ? _value.accounts : accounts as Map<int, Account>,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.accounts) : assert(accounts != null);

  @override
  final Map<int, Account> accounts;

  @override
  String toString() {
    return 'AccountState.loaded(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accounts);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(Map<int, Account> accounts),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(accounts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(Map<int, Account> accounts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AccountState {
  const factory _Loaded(Map<int, Account> accounts) = _$_Loaded;

  Map<int, Account> get accounts;
  _$LoadedCopyWith<_Loaded> get copyWith;
}
