import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/configs/util_methods.dart';
import 'package:neumorphic_cv/constants/assets.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/env.dart';
import 'package:neumorphic_cv/widgets/app_image.dart';

class YoutubeChannelWidget extends StatelessWidget {
  const YoutubeChannelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Env.youtubeChannel;
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Neumorphic(
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(AppDimensions.normalize(2)),
            ),
            depth: AppDimensions.normalize(1),
            color: AppColors.black5,
            border: const NeumorphicBorder(color: AppColors.black5),
            lightSource: LightSource.top,
          ),
          margin: Space.z!.l(1).r(1),
          padding: Space.all(0.75),
          child: Row(
            children: [
              Space.xf(3.5),
              Expanded(
                child: SelectionArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['name']!, style: AppText.b2b),
                      Space.yf(0.2),
                      Text(
                        data['subtitle']!,
                        style: AppText.l1!.copyWith(
                          color: const Color(0xFFFF3D00),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Space.yf(0.2),
                      Text(
                        data['tools']!,
                        style: AppText.l1!.copyWith(
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Semantics(
                label: 'Visit Tamizh Aasan YouTube Channel',
                button: true,
                child: Tooltip(
                  message: data['url']!,
                  child: GestureDetector(
                    onSecondaryTap: () {
                      Clipboard.setData(ClipboardData(text: data['url']!));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Link copied to clipboard: ${data['url']}',
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: NeumorphicButton(
                      margin: Space.hf(0.5),
                      padding: Space.all(0.6),
                      onPressed: () async {
                        await launchLink(data['url']!);
                      },
                      style: const NeumorphicStyle(
                        color: AppColors.black4,
                        boxShape: NeumorphicBoxShape.circle(),
                      ),
                      child: SvgPicture.asset(
                        Assets.youtubeIcon,
                        width: AppDimensions.space(1.5),
                        height: AppDimensions.space(1.5),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Neumorphic(
            margin: Space.v!,
            style: const NeumorphicStyle(
              lightSource: LightSource.left,
              color: Colors.white,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              padding: Space.all(1),
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: AppImage(
                Assets.tamizhAasan,
                width: AppDimensions.normalize(12),
                height: AppDimensions.normalize(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
