// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jupiter_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouteInfo {
  String get amount => throw _privateConstructorUsedError;
  String get inAmount => throw _privateConstructorUsedError;
  String get outAmount => throw _privateConstructorUsedError;
  String get jupiterTx => throw _privateConstructorUsedError;
  num get totalFees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouteInfoCopyWith<RouteInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteInfoCopyWith<$Res> {
  factory $RouteInfoCopyWith(RouteInfo value, $Res Function(RouteInfo) then) =
      _$RouteInfoCopyWithImpl<$Res>;
  $Res call(
      {String amount,
      String inAmount,
      String outAmount,
      String jupiterTx,
      num totalFees});
}

/// @nodoc
class _$RouteInfoCopyWithImpl<$Res> implements $RouteInfoCopyWith<$Res> {
  _$RouteInfoCopyWithImpl(this._value, this._then);

  final RouteInfo _value;
  // ignore: unused_field
  final $Res Function(RouteInfo) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? inAmount = freezed,
    Object? outAmount = freezed,
    Object? jupiterTx = freezed,
    Object? totalFees = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      inAmount: inAmount == freezed
          ? _value.inAmount
          : inAmount // ignore: cast_nullable_to_non_nullable
              as String,
      outAmount: outAmount == freezed
          ? _value.outAmount
          : outAmount // ignore: cast_nullable_to_non_nullable
              as String,
      jupiterTx: jupiterTx == freezed
          ? _value.jupiterTx
          : jupiterTx // ignore: cast_nullable_to_non_nullable
              as String,
      totalFees: totalFees == freezed
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_RouteInfoCopyWith<$Res> implements $RouteInfoCopyWith<$Res> {
  factory _$$_RouteInfoCopyWith(
          _$_RouteInfo value, $Res Function(_$_RouteInfo) then) =
      __$$_RouteInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String amount,
      String inAmount,
      String outAmount,
      String jupiterTx,
      num totalFees});
}

/// @nodoc
class __$$_RouteInfoCopyWithImpl<$Res> extends _$RouteInfoCopyWithImpl<$Res>
    implements _$$_RouteInfoCopyWith<$Res> {
  __$$_RouteInfoCopyWithImpl(
      _$_RouteInfo _value, $Res Function(_$_RouteInfo) _then)
      : super(_value, (v) => _then(v as _$_RouteInfo));

  @override
  _$_RouteInfo get _value => super._value as _$_RouteInfo;

  @override
  $Res call({
    Object? amount = freezed,
    Object? inAmount = freezed,
    Object? outAmount = freezed,
    Object? jupiterTx = freezed,
    Object? totalFees = freezed,
  }) {
    return _then(_$_RouteInfo(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      inAmount: inAmount == freezed
          ? _value.inAmount
          : inAmount // ignore: cast_nullable_to_non_nullable
              as String,
      outAmount: outAmount == freezed
          ? _value.outAmount
          : outAmount // ignore: cast_nullable_to_non_nullable
              as String,
      jupiterTx: jupiterTx == freezed
          ? _value.jupiterTx
          : jupiterTx // ignore: cast_nullable_to_non_nullable
              as String,
      totalFees: totalFees == freezed
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_RouteInfo implements _RouteInfo {
  const _$_RouteInfo(
      {required this.amount,
      required this.inAmount,
      required this.outAmount,
      required this.jupiterTx,
      required this.totalFees});

  @override
  final String amount;
  @override
  final String inAmount;
  @override
  final String outAmount;
  @override
  final String jupiterTx;
  @override
  final num totalFees;

  @override
  String toString() {
    return 'RouteInfo(amount: $amount, inAmount: $inAmount, outAmount: $outAmount, jupiterTx: $jupiterTx, totalFees: $totalFees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteInfo &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.inAmount, inAmount) &&
            const DeepCollectionEquality().equals(other.outAmount, outAmount) &&
            const DeepCollectionEquality().equals(other.jupiterTx, jupiterTx) &&
            const DeepCollectionEquality().equals(other.totalFees, totalFees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(inAmount),
      const DeepCollectionEquality().hash(outAmount),
      const DeepCollectionEquality().hash(jupiterTx),
      const DeepCollectionEquality().hash(totalFees));

  @JsonKey(ignore: true)
  @override
  _$$_RouteInfoCopyWith<_$_RouteInfo> get copyWith =>
      __$$_RouteInfoCopyWithImpl<_$_RouteInfo>(this, _$identity);
}

abstract class _RouteInfo implements RouteInfo {
  const factory _RouteInfo(
      {required final String amount,
      required final String inAmount,
      required final String outAmount,
      required final String jupiterTx,
      required final num totalFees}) = _$_RouteInfo;

  @override
  String get amount;
  @override
  String get inAmount;
  @override
  String get outAmount;
  @override
  String get jupiterTx;
  @override
  num get totalFees;
  @override
  @JsonKey(ignore: true)
  _$$_RouteInfoCopyWith<_$_RouteInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
