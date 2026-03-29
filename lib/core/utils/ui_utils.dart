import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class UIUtils {
  static void showSuccess(BuildContext context, String message) {
    toastification.show(
      context: context,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 4),
      type: ToastificationType.success,
      style: ToastificationStyle.flatColored,
    );
  }

  static void showError(BuildContext context, String message) {
    toastification.show(
      context: context,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 5),
      type: ToastificationType.error,
      style: ToastificationStyle.flatColored,
    );
  }

  static void showInfo(BuildContext context, String message) {
    toastification.show(
      context: context,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 4),
      type: ToastificationType.info,
      style: ToastificationStyle.flatColored,
    );
  }
}
