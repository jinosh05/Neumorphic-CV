import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../configs/app_typography.dart';
import 'app_image.dart';

class SoftwareWidget extends StatelessWidget {
  const SoftwareWidget({
    super.key,
    required this.image,
    this.name,
    required this.rating,
    this.url,
  }) : assert(rating <= 5 && rating >= 0, "Value can't be other than 0 to 5");

  final String image;
  final String? name, url;

  /// [rating] can be only less than or equal to 5
  final int rating;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () async {
        if (url != null) {
          if (await canLaunchUrl(Uri.parse(url!))) {
            launchUrl(Uri.parse(url!));
          }
        }
      },
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
            child: Row(
              children: [
                AppImage(
                  image,
                  height: AppDimensions.space(1),
                ),
                Space.x!,
                name != null
                    ? Text(
                        name!,
                        style: AppText.l1,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
          for (var i = 0; i < 5; i++)
            _Softwarendicatior(
              enabled: i < rating,
            ),
        ],
      ),
    );
  }
}

class _Softwarendicatior extends StatelessWidget {
  const _Softwarendicatior({
    required this.enabled,
  });

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Space.hf(0.1),
      padding: Space.all(enabled ? 0.2 : 0.4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [Colors.black, Colors.black.withOpacity(0.45)],
        ),
      ),
      child: enabled
          ? Container(
              padding: Space.all(0.20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 2,
                      color: AppColors.yellow.withOpacity(0.5))
                ],
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  colors: [
                    AppColors.red.withOpacity(0.5),
                    AppColors.yellow,
                  ],
                ),
              ),
            )
          : null,
    );
  }
}
