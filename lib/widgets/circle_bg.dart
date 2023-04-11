import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/constants/colors.dart';

class CircleBG extends StatelessWidget {
  const CircleBG({
    super.key,
    required this.child,
    this.margin,
  });

  final Widget child;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: margin ?? Space.z!.t(1),
      padding: Space.all(0.2),
      style: NeumorphicStyle(
        boxShape: const NeumorphicBoxShape.circle(),
        shape: NeumorphicShape.flat,
        depth: AppDimensions.normalize(1),
        // intensity: 0.9,
        shadowDarkColor: Colors.black,
        shadowLightColor: AppColors.black5,
        color: AppColors.black4,
        // border: const NeumorphicBorder(color: AppColors.black5),
        lightSource: LightSource.top,
      ),
      child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: child),
    );
  }
}
