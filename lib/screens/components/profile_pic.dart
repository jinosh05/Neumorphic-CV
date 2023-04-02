import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/env.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: Space.z!,
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
