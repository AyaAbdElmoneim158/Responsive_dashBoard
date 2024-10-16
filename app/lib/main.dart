import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'responsive_dashboard_app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const ResponsiveDashboardApp(),
    ),
  );
}
