// Web implementation: triggers a real browser download via <a download>
// Uses package:web instead of deprecated dart:html
import 'package:web/web.dart' as web;

Future<void> triggerDownload() async {
  final anchor = web.HTMLAnchorElement()
    ..href = 'assets/Jinosh%20Resume.pdf'
    ..download = 'Jinosh_Resume.pdf'
    ..style.display = 'none';
  web.document.body?.append(anchor);
  anchor.click();
  anchor.remove();
}
