import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/constants/assets.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/constants/enums.dart';
import 'package:neumorphic_cv/env.dart';
import 'package:url_launcher/url_launcher.dart';

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
