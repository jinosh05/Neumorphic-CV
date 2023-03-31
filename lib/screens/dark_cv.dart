import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/ui.dart';
import 'package:neumorphic_cv/constants/assets.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/env.dart';
import 'package:url_launcher/url_launcher.dart';

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

class LinksButtons extends StatelessWidget {
  const LinksButtons({
    super.key,
    required this.type,
  });

  final LinkButtonType type;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () async {
        String url = getURL();
        if (await canLaunchUrl(Uri.parse(url))) {
          launchUrl(Uri.parse(url));
        }
      },
      margin: Space.z,
      padding: Space.all(0.5, 0.35),
      style: NeumorphicStyle(
        depth: AppDimensions.normalize(1),
        color: AppColors.black4,
        border: const NeumorphicBorder(color: AppColors.black5),
        lightSource: LightSource.top,
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SvgPicture.asset(
            getIcon(),
            height: AppDimensions.font(8),
          ),
          Space.x!,
          Text(
            getID(),
            style: AppText.l1!,
          ),
          Space.x!,
        ],
      ),
    );
  }

  String getURL() {
    switch (type) {
      case LinkButtonType.git:
        return Env.gitlink;
      case LinkButtonType.linkedIn:
        return Env.linkedinLink;
      case LinkButtonType.gmail:
        return "mailto:${Env.gmailId}@gmail.com";
      default:
        return Env.gitlink;
    }
  }

  String getID() {
    switch (type) {
      case LinkButtonType.git:
        return Env.gitID;
      case LinkButtonType.linkedIn:
        return Env.linkedID;
      case LinkButtonType.gmail:
        return Env.gmailId;
      default:
        return Env.gitID;
    }
  }

  String getIcon() {
    switch (type) {
      case LinkButtonType.git:
        return Assets.gitIcon;
      case LinkButtonType.linkedIn:
        return Assets.linkedIn;
      case LinkButtonType.gmail:
        return Assets.gmailIcon;
      default:
        return Assets.gitIcon;
    }
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () {},
      margin: Space.z,
      padding: Space.all(0.25),
      style: const NeumorphicStyle(
        color: AppColors.black4,
        lightSource: LightSource.top,
        border: NeumorphicBorder(color: AppColors.black5),
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: Container(
        padding: Space.all(0.25),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Container(
          clipBehavior: Clip.antiAlias,
          margin: Space.all(0.01),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            Env.imageURL,
            width: AppDimensions.normalize(55),
          ),
        ),
      ),
    );
  }
}

enum LinkButtonType {
  git,
  gmail,
  linkedIn,
}
