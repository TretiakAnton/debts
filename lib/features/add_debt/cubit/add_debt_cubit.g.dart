// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_debt_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddDebtStateCWProxy {
  AddDebtState title(String title);

  AddDebtState description(String description);

  AddDebtState startDate(String startDate);

  AddDebtState endDate(String endDate);

  AddDebtState amount(String amount);

  AddDebtState name(String name);

  AddDebtState contacts(String contacts);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddDebtState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddDebtState(...).copyWith(id: 12, name: "My name")
  /// ````
  AddDebtState call({
    String? title,
    String? description,
    String? startDate,
    String? endDate,
    String? amount,
    String? name,
    String? contacts,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddDebtState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAddDebtState.copyWith.fieldName(...)`
class _$AddDebtStateCWProxyImpl implements _$AddDebtStateCWProxy {
  const _$AddDebtStateCWProxyImpl(this._value);

  final AddDebtState _value;

  @override
  AddDebtState title(String title) => this(title: title);

  @override
  AddDebtState description(String description) =>
      this(description: description);

  @override
  AddDebtState startDate(String startDate) => this(startDate: startDate);

  @override
  AddDebtState endDate(String endDate) => this(endDate: endDate);

  @override
  AddDebtState amount(String amount) => this(amount: amount);

  @override
  AddDebtState name(String name) => this(name: name);

  @override
  AddDebtState contacts(String contacts) => this(contacts: contacts);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddDebtState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddDebtState(...).copyWith(id: 12, name: "My name")
  /// ````
  AddDebtState call({
    Object? title = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? contacts = const $CopyWithPlaceholder(),
  }) {
    return AddDebtState(
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      startDate: startDate == const $CopyWithPlaceholder() || startDate == null
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as String,
      endDate: endDate == const $CopyWithPlaceholder() || endDate == null
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as String,
      amount: amount == const $CopyWithPlaceholder() || amount == null
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      contacts: contacts == const $CopyWithPlaceholder() || contacts == null
          ? _value.contacts
          // ignore: cast_nullable_to_non_nullable
          : contacts as String,
    );
  }
}

extension $AddDebtStateCopyWith on AddDebtState {
  /// Returns a callable class that can be used as follows: `instanceOfAddDebtState.copyWith(...)` or like so:`instanceOfAddDebtState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddDebtStateCWProxy get copyWith => _$AddDebtStateCWProxyImpl(this);
}
