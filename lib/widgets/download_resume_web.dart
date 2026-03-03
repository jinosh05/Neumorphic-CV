import 'dart:js_interop';

import 'package:flutter/services.dart';
import 'package:web/web.dart' as web;

Future<void> triggerDownload() async {
  const assetPath = 'assets/Jinosh Resume.pdf';
  final byteData = await rootBundle.load(assetPath);
  final buffer = byteData.buffer.asUint8List();

  // Create a Blob from the bytes
  final blob = web.Blob(
    [buffer.toJS].toJS,
    web.BlobPropertyBag(type: 'application/pdf'),
  );

  // Create a URL for the Blob
  final url = web.URL.createObjectURL(blob);

  // Trigger the download
  final anchor = web.HTMLAnchorElement()
    ..href = url
    ..download = 'Jinosh_Resume.pdf'
    ..style.display = 'none';

  web.document.body?.append(anchor);
  anchor.click();

  // Cleanup
  anchor.remove();
  web.URL.revokeObjectURL(url);
}
