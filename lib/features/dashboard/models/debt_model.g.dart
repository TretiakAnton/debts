// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DebtCWProxy {
  Debt createdAt(String createdAt);

  Debt endAt(String endAt);

  Debt label(String label);

  Debt description(String description);

  Debt amount(double amount);

  Debt statusId(int statusId);

  Debt id(int id);

  Debt debtName(String debtName);

  Debt debtContacts(String debtContacts);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Debt(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Debt(...).copyWith(id: 12, name: "My name")
  /// ````
  Debt call({
    String? createdAt,
    String? endAt,
    String? label,
    String? description,
    double? amount,
    int? statusId,
    int? id,
    String? debtName,
    String? debtContacts,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDebt.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDebt.copyWith.fieldName(...)`
class _$DebtCWProxyImpl implements _$DebtCWProxy {
  const _$DebtCWProxyImpl(this._value);

  final Debt _value;

  @override
  Debt createdAt(String createdAt) => this(createdAt: createdAt);

  @override
  Debt endAt(String endAt) => this(endAt: endAt);

  @override
  Debt label(String label) => this(label: label);

  @override
  Debt description(String description) => this(description: description);

  @override
  Debt amount(double amount) => this(amount: amount);

  @override
  Debt statusId(int statusId) => this(statusId: statusId);

  @override
  Debt id(int id) => this(id: id);

  @override
  Debt debtName(String debtName) => this(debtName: debtName);

  @override
  Debt debtContacts(String debtContacts) => this(debtContacts: debtContacts);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Debt(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Debt(...).copyWith(id: 12, name: "My name")
  /// ````
  Debt call({
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? endAt = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? statusId = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? debtName = const $CopyWithPlaceholder(),
    Object? debtContacts = const $CopyWithPlaceholder(),
  }) {
    return Debt(
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String,
      endAt: endAt == const $CopyWithPlaceholder() || endAt == null
          ? _value.endAt
          // ignore: cast_nullable_to_non_nullable
          : endAt as String,
      label: label == const $CopyWithPlaceholder() || label == null
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      amount: amount == const $CopyWithPlaceholder() || amount == null
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as double,
      statusId: statusId == const $CopyWithPlaceholder() || statusId == null
          ? _value.statusId
          // ignore: cast_nullable_to_non_nullable
          : statusId as int,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      debtName: debtName == const $CopyWithPlaceholder() || debtName == null
          ? _value.debtName
          // ignore: cast_nullable_to_non_nullable
          : debtName as String,
      debtContacts:
          debtContacts == const $CopyWithPlaceholder() || debtContacts == null
              ? _value.debtContacts
              // ignore: cast_nullable_to_non_nullable
              : debtContacts as String,
    );
  }
}

extension $DebtCopyWith on Debt {
  /// Returns a callable class that can be used as follows: `instanceOfDebt.copyWith(...)` or like so:`instanceOfDebt.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DebtCWProxy get copyWith => _$DebtCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Debt _$DebtFromJson(Map<String, dynamic> json) => Debt(
      createdAt: json['createdAt'] as String,
      endAt: json['endAt'] as String,
      label: json['label'] as String,
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
      statusId: json['statusId'] as int,
      id: json['id'] as int,
      debtName: json['debtName'] as String,
      debtContacts: json['debtContacts'] as String,
    );

Map<String, dynamic> _$DebtToJson(Debt instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'endAt': instance.endAt,
      'label': instance.label,
      'description': instance.description,
      'amount': instance.amount,
      'statusId': instance.statusId,
      'id': instance.id,
      'debtName': instance.debtName,
      'debtContacts': instance.debtContacts,
    };
