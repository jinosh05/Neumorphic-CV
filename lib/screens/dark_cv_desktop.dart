part of 'dark_cv.dart';

class _DarkCVDesktop extends StatelessWidget {
  _DarkCVDesktop();
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
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
      ),
    );
  }
}
