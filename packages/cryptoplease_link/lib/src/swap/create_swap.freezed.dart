// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_swap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SwapTransaction {
  String get amount => throw _privateConstructorUsedError;
  String get inAmount => throw _privateConstructorUsedError;
  String get outAmount => throw _privateConstructorUsedError;
  int get fee => throw _privateConstructorUsedError;
  SignedTx get transaction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwapTransactionCopyWith<SwapTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapTransactionCopyWith<$Res> {
  factory $SwapTransactionCopyWith(
          SwapTransaction value, $Res Function(SwapTransaction) then) =
      _$SwapTransactionCopyWithImpl<$Res>;
  $Res call(
      {String amount,
      String inAmount,
      String outAmount,
      int fee,
      SignedTx transaction});
}

/// @nodoc
class _$SwapTransactionCopyWithImpl<$Res>
    implements $SwapTransactionCopyWith<$Res> {
  _$SwapTransactionCopyWithImpl(this._value, this._then);

  final SwapTransaction _value;
  // ignore: unused_field
  final $Res Function(SwapTransaction) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? inAmount = freezed,
    Object? outAmount = freezed,
    Object? fee = freezed,
    Object? transaction = freezed,
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
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SignedTx,
    ));
  }
}

/// @nodoc
abstract class _$$_SwapTransactionCopyWith<$Res>
    implements $SwapTransactionCopyWith<$Res> {
  factory _$$_SwapTransactionCopyWith(
          _$_SwapTransaction value, $Res Function(_$_SwapTransaction) then) =
      __$$_SwapTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String amount,
      String inAmount,
      String outAmount,
      int fee,
      SignedTx transaction});
}

/// @nodoc
class __$$_SwapTransactionCopyWithImpl<$Res>
    extends _$SwapTransactionCopyWithImpl<$Res>
    implements _$$_SwapTransactionCopyWith<$Res> {
  __$$_SwapTransactionCopyWithImpl(
      _$_SwapTransaction _value, $Res Function(_$_SwapTransaction) _then)
      : super(_value, (v) => _then(v as _$_SwapTransaction));

  @override
  _$_SwapTransaction get _value => super._value as _$_SwapTransaction;

  @override
  $Res call({
    Object? amount = freezed,
    Object? inAmount = freezed,
    Object? outAmount = freezed,
    Object? fee = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$_SwapTransaction(
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
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SignedTx,
    ));
  }
}

/// @nodoc

class _$_SwapTransaction implements _SwapTransaction {
  const _$_SwapTransaction(
      {required this.amount,
      required this.inAmount,
      required this.outAmount,
      required this.fee,
      required this.transaction});

  @override
  final String amount;
  @override
  final String inAmount;
  @override
  final String outAmount;
  @override
  final int fee;
  @override
  final SignedTx transaction;

  @override
  String toString() {
    return 'SwapTransaction(amount: $amount, inAmount: $inAmount, outAmount: $outAmount, fee: $fee, transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapTransaction &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.inAmount, inAmount) &&
            const DeepCollectionEquality().equals(other.outAmount, outAmount) &&
            const DeepCollectionEquality().equals(other.fee, fee) &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(inAmount),
      const DeepCollectionEquality().hash(outAmount),
      const DeepCollectionEquality().hash(fee),
      const DeepCollectionEquality().hash(transaction));

  @JsonKey(ignore: true)
  @override
  _$$_SwapTransactionCopyWith<_$_SwapTransaction> get copyWith =>
      __$$_SwapTransactionCopyWithImpl<_$_SwapTransaction>(this, _$identity);
}

abstract class _SwapTransaction implements SwapTransaction {
  const factory _SwapTransaction(
      {required final String amount,
      required final String inAmount,
      required final String outAmount,
      required final int fee,
      required final SignedTx transaction}) = _$_SwapTransaction;

  @override
  String get amount;
  @override
  String get inAmount;
  @override
  String get outAmount;
  @override
  int get fee;
  @override
  SignedTx get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_SwapTransactionCopyWith<_$_SwapTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
