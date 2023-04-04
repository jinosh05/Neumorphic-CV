import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/configs/ui.dart';
import 'package:neumorphic_cv/configs/util_methods.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/constants/strings.dart';
import 'package:neumorphic_cv/env.dart';
import 'package:neumorphic_cv/widgets/animated_gradient.dart';
import 'package:neumorphic_cv/widgets/app_image.dart';
import 'package:neumorphic_cv/widgets/software_widget.dart';

import '../configs/app_typography.dart';
import '../widgets/skill_widget.dart';
import 'components/profile_info_header.dart';

part 'components/experience_card.dart';
part 'components/language_button.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              color: AppColors.lightBlue,
                              shadows: [
                                const Shadow(
                                    blurRadius: 0.5, color: AppColors.darkBlue)
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
                          Space.y1!,
                          Text(
                            S.technicalSkills.toUpperCase(),
                            style: AppText.b3b!.gilda().copyWith(
                              color: Colors.pink,
                              shadows: [
                                const Shadow(
                                  blurRadius: 1,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          Space.y!,
                          for (var i = 0; i < Env.technicalSkill.length; i++)
                            _TechnicalCard(Env.technicalSkill[i]),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: Space.z!.r(1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Space.y!,
                          NeumorphicText(
                            S.experience,
                            textStyle: NeumorphicTextStyle(
                                fontSize: AppDimensions.font(7),
                                fontFamily: "Gilda",
                                fontWeight: FontWeight.w400),
                          ),
                          Space.yf(0.75),
                          for (var i = 0; i < Env.experiences.length; i++)
                            _ExperienceCard(Env.experiences[i]),
                          Space.y1!,
                          Wrap(
                            spacing: AppDimensions.normalize(7),
                            runSpacing: AppDimensions.normalize(7),
                            children: [
                              for (var i = 0; i < Env.languages.length; i++)
                                _LanguageButton(Env.languages[i]),
                            ],
                          ),
                          Space.yf(1.5),
                          Text(
                            S.appsDeveloped.toUpperCase(),
                            style: AppText.b3b!.gilda().copyWith(
                              color: Colors.orange,
                              shadows: [
                                const Shadow(
                                    blurRadius: 0.5, color: AppColors.yellow)
                              ],
                            ),
                          ),
                          Space.y1!,
                          for (var i = 0; i < Env.appsInfo.length; i++)
                            AppInfoWidget(
                              data: Env.appsInfo[i],
                            )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Space.yf(1.5),
            ],
          ),
        ),
      ),
    );
  }
}

class _TechnicalCard extends StatelessWidget {
  const _TechnicalCard(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: AnimateGradient(
        primaryBegin: Alignment.centerLeft,
        primaryEnd: Alignment.topRight,
        secondaryBegin: Alignment.topRight,
        secondaryEnd: Alignment.centerLeft,
        duration: const Duration(
          seconds: 2,
        ),
        primaryColors: const [
          AppColors.lightBlack,
          AppColors.black2,
          AppColors.black6,
          AppColors.black4,
        ],
        secondaryColors: const [
          AppColors.black2,
          AppColors.black6,
          AppColors.black4,
          AppColors.lightBlack,
        ],
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppDimensions.normalize(10),
            ),
          ),
          padding: Space.all(0.75),
          child: Row(
            children: [
              Container(
                padding: Space.all(),
                margin: Space.z!.r(0.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.red,
                    ),
                    BoxShadow(
                      color: Colors.yellow,
                      spreadRadius: -AppDimensions.normalize(1),
                      blurRadius: AppDimensions.normalize(1),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  text,
                  style: AppText.b3b,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppInfoWidget extends StatelessWidget {
  const AppInfoWidget({
    super.key,
    required this.data,
  });

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
                BorderRadius.circular(AppDimensions.normalize(2))),
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
                child: Text(
                  data['name'],
                  style: AppText.b2b,
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
                boxShape: NeumorphicBoxShape.circle()),
            child: Container(
              clipBehavior: Clip.antiAlias,
              padding: Space.all(1),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: AppImage(
                data['img'],
                width: AppDimensions.space(2),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            for (var i = 0; i < data['links'].length; i++)
              NeumorphicButton(
                margin: Space.hf(0.25),
                padding: Space.all(),
                onPressed: () async {
                  await launchLink(data['links'][i]['url']);
                },
                style: const NeumorphicStyle(
                    color: AppColors.black4,
                    boxShape: NeumorphicBoxShape.circle()),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: AppImage(
                    data['links'][i]['icon'],
                    width: AppDimensions.space(1.5),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
