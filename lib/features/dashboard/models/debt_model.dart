import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'debt_model.g.dart';

@JsonSerializable()
@CopyWith()
class Debt {
  Debt({
    required this.createdAt,
    required this.endAt,
    required this.label,
    required this.description,
    required this.amount,
    required this.statusId,
    required this.id,
    required this.debtName,
    required this.debtContacts,
  });

  final String createdAt;
  final String endAt;
  final String label;
  final String description;
  final double amount;
  final int statusId;
  final int id;
  final String debtName;
  final String debtContacts;

  String get statusTitle {
    switch (statusId) {
      case 1:
        return 'Assigned';
      case 2:
        return 'In progress';
      case 3:
        return 'Completed';
      default:
        return 'Assigned';
    }
  }

  Color get statusColor {
    switch (statusId) {
      case 1:
        return AppColors.red;
      case 2:
        return AppColors.inActiveYellowF5E966;
      case 3:
        return AppColors.green;
      default:
        return AppColors.red;
    }
  }

  factory Debt.fromJson(dynamic json) => _$DebtFromJson(json);

  Map<String, dynamic> toJson() => _$DebtToJson(this);
}
