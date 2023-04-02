import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/ui.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/constants/strings.dart';
import 'package:neumorphic_cv/env.dart';

import '../configs/app_typography.dart';
import 'components/profile_info_header.dart';

class DarkCV extends StatefulWidget {
  const DarkCV({super.key});

  @override
  State<DarkCV> createState() => _DarkCVState();
}

class _DarkCVState extends State<DarkCV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: UI.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.black2, AppColors.black3],
            tileMode: TileMode.decal,
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileInfoHeader(),
              Divider(
                height: AppDimensions.height(0.1),
                thickness: 0.5,
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: Space.h1!,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Space.y!,
                          NeumorphicText(
                            S.aboutMe,
                            textStyle: NeumorphicTextStyle(
                                fontSize: AppDimensions.font(7),
                                fontFamily: "Gilda",
                                fontWeight: FontWeight.w400),
                          ),
                          Space.yf(0.75),
                          Card(
                            elevation: 5,
                            surfaceTintColor: Colors.white.withOpacity(0.1),
                            color: Colors.white.withOpacity(0.05),
                            margin: Space.z,
                            child: Padding(
                              padding: Space.all(1),
                              child: const Text(Env.aboutMe),
                            ),
                          ),
                          Space.y2!,
                          Text(
                            S.skills.toUpperCase(),
                            style: AppText.b3b!.gilda().copyWith(
                              color: AppColors.darkBlue,
                              shadows: [
                                const Shadow(
                                    blurRadius: 0.5, color: AppColors.lightBlue)
                              ],
                            ),
                          ),
                          Space.y1!,
                          const SkillWidget(
                            name: S.communication,
                            rating: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    super.key,
    required this.name,
    required this.rating,
  });

  final String name;

  /// [rating] can be only less than or equal to 5
  final int rating;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () async {},
      margin: Space.z,
      padding: Space.all(0.5, 0.35),
      style: NeumorphicStyle(
        depth: AppDimensions.normalize(1),
        color: AppColors.black4,
        border: const NeumorphicBorder(color: AppColors.black5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: AppText.l1!.tsc(0.8),
            ),
          ),
          for (var i = 0; i < 5; i++)
            SkillIndicatior(
              enabled: i < rating,
            ),
        ],
      ),
    );
  }
}

class SkillIndicatior extends StatelessWidget {
  const SkillIndicatior({
    super.key,
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
                      color: AppColors.lightBlue.withOpacity(0.5))
                ],
                gradient: RadialGradient(
                  colors: [
                    AppColors.lightBlue.withOpacity(0.85),
                    AppColors.lightBlue,
                    AppColors.lightBlue.withOpacity(0.85),
                  ],
                ),
              ),
            )
          : null,
    );
  }
}
