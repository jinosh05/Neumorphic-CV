import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/configs/ui.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/constants/strings.dart';
import 'package:neumorphic_cv/env.dart';
import 'package:neumorphic_cv/widgets/app_image.dart';
import 'package:neumorphic_cv/widgets/software_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../configs/app_typography.dart';
import '../widgets/skill_widget.dart';
import 'components/profile_info_header.dart';

part 'components/experience_card.dart';

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
                          const _LanguageButton("Tamil"),
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

class _LanguageButton extends StatelessWidget {
  const _LanguageButton(this.language);
  final String language;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: Space.z!,
      style: NeumorphicStyle(
        color: AppColors.black6,
        boxShape: const NeumorphicBoxShape.circle(),
        border: NeumorphicBorder(
          color: AppColors.lightBlue,
          width: AppDimensions.normalize(2),
        ),
      ),
      child: Container(
        width: AppDimensions.normalize(25),
        height: AppDimensions.normalize(25),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Text(
          language,
          style: AppText.b3b,
        ),
      ),
    );
  }
}
