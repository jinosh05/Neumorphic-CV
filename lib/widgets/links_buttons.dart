import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/util_methods.dart';
import 'package:neumorphic_cv/constants/colors.dart';

class LinksButtons extends StatelessWidget {
  const LinksButtons({super.key, required this.data});

  final Map data;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Link to ${data['id']}',
      button: true,
      child: Tooltip(
        message: data['url'],
        child: GestureDetector(
          onSecondaryTap: () {
            Clipboard.setData(ClipboardData(text: data['url']));
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Link copied to clipboard: ${data['url']}'),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          child: NeumorphicButton(
            onPressed: () async {
              await launchLink(data['url']);
            },
            margin: Space.z,
            padding: Space.all(0.5, 0.35),
            style: NeumorphicStyle(
              depth: AppDimensions.normalize(1),
              color: AppColors.black4,
              border: const NeumorphicBorder(color: AppColors.black5),
              lightSource: LightSource.top,
            ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SvgPicture.asset(data['icon'], height: AppDimensions.font(8)),
                Space.x!,
                Text(data['id'], style: AppText.l1!),
                Space.x!,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
