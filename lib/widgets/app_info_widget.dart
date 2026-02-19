import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/configs/util_methods.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/widgets/app_image.dart';

class AppInfoWidget extends StatelessWidget {
  const AppInfoWidget({super.key, required this.data});

  final Map data;

  @override
  Widget build(BuildContext context) {
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
          padding: Space.all(),
          child: Row(
            children: [
              Space.xf(3.5),
              Expanded(
                child: SelectionArea(
                  child: Text(data['name'], style: AppText.b2b),
                ),
              ),
              Space.xf(6),
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
                data['img'],
                width: AppDimensions.normalize(12),
                height: AppDimensions.normalize(12),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            for (var i = 0; i < data['links'].length; i++)
              Semantics(
                label:
                    'Get it on ${data['links'][i]['url'].contains('apple') ? 'App Store' : 'Play Store'}',
                button: true,
                child: Tooltip(
                  message: data['links'][i]['url'],
                  child: GestureDetector(
                    onSecondaryTap: () {
                      Clipboard.setData(
                        ClipboardData(text: data['links'][i]['url']),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Link copied to clipboard: ${data['links'][i]['url']}',
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: NeumorphicButton(
                      margin: Space.hf(0.25),
                      padding: Space.all(),
                      onPressed: () async {
                        await launchLink(data['links'][i]['url']);
                      },
                      style: const NeumorphicStyle(
                        color: AppColors.black4,
                        boxShape: NeumorphicBoxShape.circle(),
                      ),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: AppImage(
                          data['links'][i]['icon'],
                          width: AppDimensions.space(1.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
