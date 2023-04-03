import 'package:url_launcher/url_launcher.dart';

Future<void> launchLink(url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
  }
}
