// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_details_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DebtDetailStateCWProxy {
  DebtDetailState selectedDebt(Debt? selectedDebt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DebtDetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DebtDetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  DebtDetailState call({
    Debt? selectedDebt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDebtDetailState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDebtDetailState.copyWith.fieldName(...)`
class _$DebtDetailStateCWProxyImpl implements _$DebtDetailStateCWProxy {
  const _$DebtDetailStateCWProxyImpl(this._value);

  final DebtDetailState _value;

  @override
  DebtDetailState selectedDebt(Debt? selectedDebt) =>
      this(selectedDebt: selectedDebt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DebtDetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DebtDetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  DebtDetailState call({
    Object? selectedDebt = const $CopyWithPlaceholder(),
  }) {
    return DebtDetailState(
      selectedDebt: selectedDebt == const $CopyWithPlaceholder()
          ? _value.selectedDebt
          // ignore: cast_nullable_to_non_nullable
          : selectedDebt as Debt?,
    );
  }
}

extension $DebtDetailStateCopyWith on DebtDetailState {
  /// Returns a callable class that can be used as follows: `instanceOfDebtDetailState.copyWith(...)` or like so:`instanceOfDebtDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DebtDetailStateCWProxy get copyWith => _$DebtDetailStateCWProxyImpl(this);
}
