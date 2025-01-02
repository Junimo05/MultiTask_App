import 'package:flutter/material.dart';
import 'package:multitask_fe/ui/_common/loading.dart';

class LoadingOverlay {
  static OverlayEntry? overlayEntry;

  static void showLoading(BuildContext context) {
    if (overlayEntry != null) return;
    overlayEntry = OverlayEntry(builder: (context) => const Loading());
    Overlay.of(context).insert(overlayEntry!);
  }

  static void hideLoading() {
    if (overlayEntry == null) return;
    overlayEntry?.remove();
    overlayEntry = null;
  }
}
