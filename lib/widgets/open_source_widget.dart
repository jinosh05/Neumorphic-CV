import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/constants/colors.dart';

import '../configs/app_typography.dart';
import '../configs/util_methods.dart';

class OpenSourceWidget extends StatelessWidget {
  const OpenSourceWidget({super.key, required this.name, required this.url});

  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Open source package: $name, pub.dev link available',
      button: true,
      child: Tooltip(
        message: url,
        child: GestureDetector(
          onSecondaryTap: () {
            Clipboard.setData(ClipboardData(text: url));
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Link copied: $url'),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          child: NeumorphicButton(
            onPressed: () => launchLink(url),
            margin: Space.z!.b(0.75),
            padding: Space.all(0.5, 0.35),
            style: NeumorphicStyle(
              depth: AppDimensions.normalize(1),
              color: AppColors.black4,
              border: const NeumorphicBorder(color: AppColors.black5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(name, style: AppText.l1!.tsc(0.8)),
                ),
                Icon(
                  Icons.open_in_new_rounded,
                  size: AppDimensions.normalize(7),
                  color: const Color(0xFF00BCD4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
