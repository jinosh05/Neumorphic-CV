part of 'dark_cv.dart';

class _DarkCVMobile extends StatefulWidget {
  const _DarkCVMobile();

  @override
  State<_DarkCVMobile> createState() => _DarkCVMobileState();
}

class _DarkCVMobileState extends State<_DarkCVMobile> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      children: [
        const _ProfileInfoHeader(),
        Padding(
          padding: Space.hf(1.5).b(1),
          child: const _LinksWrap(),
        ),
        Divider(
          height: AppDimensions.height(0.1),
          thickness: 0.5,
          color: Colors.white,
        ),
        Padding(
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
                  child: Text(
                    Env.aboutMe,
                    style: AppText.b3,
                  ),
                ),
              ),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    children: [
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
                    ],
                  )),
                  Space.x!,
                  Expanded(
                      child: Column(
                    children: [
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
                    ],
                  )),
                ],
              ),
              const ShadowedText(
                text: S.technicalSkills,
                textColor: Colors.pink,
                shadowColor: Colors.white,
              ),
              Space.y!,
              for (var i = 0; i < Env.technicalSkill.length; i++)
                _TechnicalCard(Env.technicalSkill[i]),
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
                style: AppText.b2!.tsc(0.7),
              ),
              Space.y1!,
            ],
          ),
        )
      ],
    );
  }
}
