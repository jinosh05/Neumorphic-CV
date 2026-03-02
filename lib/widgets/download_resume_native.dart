// Native (non-web) implementation: loads asset bytes and opens with external viewer
import 'dart:io' as io show File, Directory;

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> triggerDownload() async {
  const assetPath = 'assets/Jinosh Resume.pdf';
  final byteData = await rootBundle.load(assetPath);
  final bytes = byteData.buffer.asUint8List();

  final tempPath = io.Directory.systemTemp.path;
  final file = io.File('$tempPath/Jinosh_Resume.pdf');
  await file.writeAsBytes(bytes);

  final uri = Uri.file(file.path);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
