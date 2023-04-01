import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/ui.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/constants/enums.dart';
import 'package:neumorphic_cv/env.dart';
import 'package:neumorphic_cv/widgets/links_buttons.dart';

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
              Padding(
                padding: Space.all(1.5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfilePic(),
                    Space.x1!,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Space.y!,
                          Text(
                            Env.name,
                            style: AppText.b2b!.gilda(),
                          ),
                          Space.yf(0.25),
                          Text(
                            Env.profession.toUpperCase(),
                            style: AppText.b3b!.gilda().copyWith(
                              color: AppColors.lightBlue,
                              shadows: [
                                const Shadow(color: AppColors.darkBlue)
                              ],
                            ),
                          ),
                          Space.yf(0.25),
                          SizedBox(
                            width: AppDimensions.width(60),
                            child: Text(
                              Env.address,
                              style: AppText.l1b,
                            ),
                          ),
                          Row(
                            children: [
                              const LinksButtons(type: LinkButtonType.git),
                              Space.x!,
                              const LinksButtons(type: LinkButtonType.linkedIn),
                              Space.x!,
                              const LinksButtons(type: LinkButtonType.gmail),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
