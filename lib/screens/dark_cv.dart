import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/configs/ui.dart';
import 'package:neumorphic_cv/configs/util_methods.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/constants/strings.dart';
import 'package:neumorphic_cv/env.dart';
import 'package:neumorphic_cv/screens/components/profile_pic.dart';
import 'package:neumorphic_cv/widgets/animated_gradient.dart';
import 'package:neumorphic_cv/widgets/app_image.dart';
import 'package:neumorphic_cv/widgets/shadowed_text.dart';
import 'package:neumorphic_cv/widgets/software_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';
import 'package:neumorphic_cv/widgets/links_buttons.dart';

import '../widgets/app_info_widget.dart';
import '../widgets/circle_bg.dart';
import '../widgets/skill_widget.dart';

part 'components/education_card.dart';
part 'components/experience_card.dart';
part 'components/language_button.dart';
part 'components/technical_card.dart';

part 'components/profile_info_header.dart';

class _DarkCVMobile extends StatelessWidget {
  const _DarkCVMobile();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const _ProfileInfoHeader(),
        Padding(
          padding: Space.h1!,
          child: const _LinksWrap(),
        ),
      ],
    );
  }
}

class _DarkCVDesktop extends StatelessWidget {
  const _DarkCVDesktop();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const _ProfileInfoHeader(),
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
                    Text(
                      S.aboutMe,
                      style: AppText.b2b!.gilda(),
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
                    const ShadowedText(
                        text: S.software,
                        textColor: AppColors.red,
                        shadowColor: AppColors.yellow),
                    Space.y1!,
                    for (var i = 0; i < Env.softwares.length; i++)
                      SoftwareWidget(
                        name: Env.softwares[i]['name'],
                        image: Env.softwares[i]['image'],
                        rating: Env.softwares[i]['rating'],
                        url: Env.softwares[i]['url'],
                      ),
                    Space.y1!,
                    const ShadowedText(
                      text: S.technicalSkills,
                      textColor: Colors.pink,
                      shadowColor: Colors.white,
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
                    Text(
                      S.experience,
                      style: AppText.b2b!.gilda(),
                    ),
                    Space.yf(0.75),
                    for (var i = 0; i < Env.experiences.length; i++)
                      _ExperienceCard(Env.experiences[i]),
                    const ShadowedText(
                      text: S.education,
                      textColor: Colors.green,
                      shadowColor: Colors.greenAccent,
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
                    const ShadowedText(
                      text: S.appsDeveloped,
                      textColor: Colors.orange,
                      shadowColor: AppColors.yellow,
                    ),
                    Space.y1!,
                    for (var i = 0; i < Env.appsInfo.length; i++)
                      AppInfoWidget(
                        data: Env.appsInfo[i],
                      ),
                    Space.y1!,
                    ShadowedText(
                      text: "${S.note.toUpperCase()} :- ",
                      textColor: Colors.white,
                      shadowColor: AppColors.lightBlue,
                    ),
                    Space.y!,
                    Text(
                      S.noteMsg,
                      style: AppText.b2!,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Space.yf(1.5),
      ],
    );
  }
}

class DarkCV extends StatelessWidget {
  const DarkCV({super.key});

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
        child: ScreenTypeLayout.builder(
          mobile: (context) {
            return const _DarkCVMobile();
          },
          desktop: (context) {
            return const _DarkCVDesktop();
          },
        ),
      ),
    );
  }
}
