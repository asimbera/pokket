// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

// ignore: unused_element
  _Account call(
      {@required String name,
      @required int type,
      @required int currency,
      @required int icon,
      @required int color,
      @required String description,
      @required double initialBalance}) {
    return _Account(
      name: name,
      type: type,
      currency: currency,
      icon: icon,
      color: color,
      description: description,
      initialBalance: initialBalance,
    );
  }

// ignore: unused_element
  Account fromJson(Map<String, Object> json) {
    return Account.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  String get name;
  int get type;
  int get currency;
  int get icon;
  int get color;
  String get description;
  double get initialBalance;

  Map<String, dynamic> toJson();
  $AccountCopyWith<Account> get copyWith;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int type,
      int currency,
      int icon,
      int color,
      String description,
      double initialBalance});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object name = freezed,
    Object type = freezed,
    Object currency = freezed,
    Object icon = freezed,
    Object color = freezed,
    Object description = freezed,
    Object initialBalance = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as int,
      currency: currency == freezed ? _value.currency : currency as int,
      icon: icon == freezed ? _value.icon : icon as int,
      color: color == freezed ? _value.color : color as int,
      description:
          description == freezed ? _value.description : description as String,
      initialBalance: initialBalance == freezed
          ? _value.initialBalance
          : initialBalance as double,
    ));
  }
}

/// @nodoc
abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int type,
      int currency,
      int icon,
      int color,
      String description,
      double initialBalance});
}

/// @nodoc
class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object name = freezed,
    Object type = freezed,
    Object currency = freezed,
    Object icon = freezed,
    Object color = freezed,
    Object description = freezed,
    Object initialBalance = freezed,
  }) {
    return _then(_Account(
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as int,
      currency: currency == freezed ? _value.currency : currency as int,
      icon: icon == freezed ? _value.icon : icon as int,
      color: color == freezed ? _value.color : color as int,
      description:
          description == freezed ? _value.description : description as String,
      initialBalance: initialBalance == freezed
          ? _value.initialBalance
          : initialBalance as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Account extends _Account with DiagnosticableTreeMixin {
  const _$_Account(
      {@required this.name,
      @required this.type,
      @required this.currency,
      @required this.icon,
      @required this.color,
      @required this.description,
      @required this.initialBalance})
      : assert(name != null),
        assert(type != null),
        assert(currency != null),
        assert(icon != null),
        assert(color != null),
        assert(description != null),
        assert(initialBalance != null),
        super._();

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountFromJson(json);

  @override
  final String name;
  @override
  final int type;
  @override
  final int currency;
  @override
  final int icon;
  @override
  final int color;
  @override
  final String description;
  @override
  final double initialBalance;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Account(name: $name, type: $type, currency: $currency, icon: $icon, color: $color, description: $description, initialBalance: $initialBalance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Account'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('initialBalance', initialBalance));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Account &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.initialBalance, initialBalance) ||
                const DeepCollectionEquality()
                    .equals(other.initialBalance, initialBalance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(initialBalance);

  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountToJson(this);
  }
}

abstract class _Account extends Account {
  const _Account._() : super._();
  const factory _Account(
      {@required String name,
      @required int type,
      @required int currency,
      @required int icon,
      @required int color,
      @required String description,
      @required double initialBalance}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override
  String get name;
  @override
  int get type;
  @override
  int get currency;
  @override
  int get icon;
  @override
  int get color;
  @override
  String get description;
  @override
  double get initialBalance;
  @override
  _$AccountCopyWith<_Account> get copyWith;
}
