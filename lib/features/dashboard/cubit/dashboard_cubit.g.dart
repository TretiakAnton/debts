// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DashboardStateCWProxy {
  DashboardState isInited(bool isInited);

  DashboardState debts(List<Debt>? debts);

  DashboardState search(String search);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DashboardState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DashboardState(...).copyWith(id: 12, name: "My name")
  /// ````
  DashboardState call({
    bool? isInited,
    List<Debt>? debts,
    String? search,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDashboardState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDashboardState.copyWith.fieldName(...)`
class _$DashboardStateCWProxyImpl implements _$DashboardStateCWProxy {
  const _$DashboardStateCWProxyImpl(this._value);

  final DashboardState _value;

  @override
  DashboardState isInited(bool isInited) => this(isInited: isInited);

  @override
  DashboardState debts(List<Debt>? debts) => this(debts: debts);

  @override
  DashboardState search(String search) => this(search: search);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DashboardState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DashboardState(...).copyWith(id: 12, name: "My name")
  /// ````
  DashboardState call({
    Object? isInited = const $CopyWithPlaceholder(),
    Object? debts = const $CopyWithPlaceholder(),
    Object? search = const $CopyWithPlaceholder(),
  }) {
    return DashboardState(
      isInited: isInited == const $CopyWithPlaceholder() || isInited == null
          ? _value.isInited
          // ignore: cast_nullable_to_non_nullable
          : isInited as bool,
      debts: debts == const $CopyWithPlaceholder()
          ? _value.debts
          // ignore: cast_nullable_to_non_nullable
          : debts as List<Debt>?,
      search: search == const $CopyWithPlaceholder() || search == null
          ? _value.search
          // ignore: cast_nullable_to_non_nullable
          : search as String,
    );
  }
}

extension $DashboardStateCopyWith on DashboardState {
  /// Returns a callable class that can be used as follows: `instanceOfDashboardState.copyWith(...)` or like so:`instanceOfDashboardState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DashboardStateCWProxy get copyWith => _$DashboardStateCWProxyImpl(this);
}
