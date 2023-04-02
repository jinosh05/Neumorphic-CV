import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/configs/ui.dart';
import 'package:neumorphic_cv/constants/assets.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/constants/strings.dart';
import 'package:neumorphic_cv/env.dart';
import 'package:neumorphic_cv/widgets/app_image.dart';
import 'package:neumorphic_cv/widgets/software_widget.dart';

import '../configs/app_typography.dart';
import '../widgets/skill_widget.dart';
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
                          for (var i = 0; i < Env.skills.length; i++)
                            SkillWidget(
                              name: Env.skills[i]['name'],
                              rating: Env.skills[i]['rating'],
                            ),
                          Space.y2!,
                          Text(
                            S.software.toUpperCase(),
                            style: AppText.b3b!.gilda().copyWith(
                              color: AppColors.red,
                              shadows: [
                                const Shadow(
                                    blurRadius: 0.5, color: AppColors.yellow)
                              ],
                            ),
                          ),
                          Space.y1!,
                          for (var i = 0; i < Env.softwares.length; i++)
                            SoftwareWidget(
                              name: Env.softwares[i]['name'],
                              image: Env.softwares[i]['image'],
                              rating: Env.softwares[i]['rating'],
                              url: Env.softwares[i]['url'],
                            ),
                          Space.yf(3),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: Space.z!.r(1),
                      child: Column(
                        children: [
                          Neumorphic(
                            margin: Space.z!,
                            padding: Space.all(),
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(
                                      AppDimensions.normalize(7))),
                              shadowLightColor: Colors.black,
                              shadowDarkColor: AppColors.black2,
                              depth: AppDimensions.normalize(1),
                              color: AppColors.black5,
                              border: const NeumorphicBorder(
                                  color: AppColors.black5),
                              lightSource: LightSource.top,
                            ),
                            child: Row(
                              children: [
                                Neumorphic(
                                  margin: Space.z!,
                                  padding: Space.all(0.2),
                                  style: NeumorphicStyle(
                                    boxShape: const NeumorphicBoxShape.circle(),
                                    shape: NeumorphicShape.flat,
                                    depth: AppDimensions.normalize(5),
                                    intensity: 0.9,
                                    shadowDarkColor: Colors.black,
                                    shadowLightColor: AppColors.black5,
                                    color: AppColors.black4,
                                    border: const NeumorphicBorder(
                                        color: AppColors.black5),
                                    lightSource: LightSource.top,
                                  ),
                                  child: Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle),
                                    child: AppImage(
                                      Assets.excrin,
                                      width: AppDimensions.normalize(20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
