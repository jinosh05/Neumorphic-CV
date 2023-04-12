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
import '../widgets/app_info_widget.dart';
import '../widgets/circle_bg.dart';
import '../widgets/skill_widget.dart';
import 'components/profile_info_header.dart';

part 'components/education_card.dart';
part 'components/experience_card.dart';
part 'components/language_button.dart';
part 'components/technical_card.dart';

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
        child: ListView(
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
                        Space.y1!,
                        const ShadowedText(
                            text: S.skills,
                            textColor: AppColors.lightBlue,
                            shadowColor: AppColors.darkBlue),
                        Space.y1!,
                        for (var i = 0; i < Env.skills.length; i++)
                          SkillWidget(
                            name: Env.skills[i]['name'],
                            rating: Env.skills[i]['rating'],
                          ),
                        Space.y1!,
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
                        Text(
                          S.education.toUpperCase(),
                          style: AppText.b3b!.gilda().copyWith(
                            color: Colors.green,
                            shadows: [
                              const Shadow(
                                  blurRadius: 0.5, color: Colors.greenAccent)
                            ],
                          ),
                        ),
                        Space.y1!,
                        for (var i = 0; i < Env.education.length; i++)
                          EducationCard(
                            data: Env.education[i],
                          ),
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
                          ),
                        Space.y1!,
                        Text(
                          "${S.note.toUpperCase()} :- ",
                          style: AppText.b3b!.gilda().copyWith(
                            shadows: [
                              const Shadow(
                                  blurRadius: 1, color: AppColors.lightBlue)
                            ],
                          ),
                        ),
                        Space.y!,
                        NeumorphicText(
                          S.noteMsg,
                          textAlign: TextAlign.left,
                          textStyle: NeumorphicTextStyle(
                            fontSize: AppDimensions.font(7),
                            fontFamily: 'Roboto',
                          ),
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
    );
  }
}

class ShadowedText extends StatelessWidget {
  const ShadowedText({
    super.key,
    required this.text,
    required this.textColor,
    required this.shadowColor,
  });

  final String text;
  final Color textColor, shadowColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: AppText.b3b!.gilda().copyWith(
        color: textColor,
        shadows: [Shadow(blurRadius: 0.5, color: shadowColor)],
      ),
    );
  }
}
