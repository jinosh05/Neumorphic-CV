import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/ui.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/env.dart';

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
                  children: const [
                    ProfilePic(),
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

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      margin: Space.z,
      padding: Space.all(0.25),
      drawSurfaceAboveChild: true,
      style: const NeumorphicStyle(
        color: AppColors.black4,
        depth: 5,
        intensity: 5,
        shadowDarkColor: AppColors.black5,
        shadowLightColor: AppColors.black4,
        oppositeShadowLightSource: true,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppDimensions.normalize(50),
          ),
        ),
        child: Container(
          clipBehavior: Clip.antiAlias,
          margin: Space.all(0.01),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            Env.imageURL,
            width: AppDimensions.normalize(50),
          ),
        ),
      ),
    );
  }
}
