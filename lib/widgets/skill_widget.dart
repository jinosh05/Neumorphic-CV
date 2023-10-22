import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/constants/colors.dart';

import '../configs/app_typography.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    super.key,
    required this.name,
    required this.rating,
  }) : assert(rating <= 5 && rating >= 0, "Value can't be other than 0 to 5");

  final String name;

  /// [rating] can be only less than or equal to 5
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: Space.z!.b(0.75),
      padding: Space.all(0.5, 0.35),
      style: NeumorphicStyle(
        depth: AppDimensions.normalize(1),
        color: AppColors.black4,
        border: const NeumorphicBorder(color: AppColors.black5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: AppText.l1!.tsc(0.8),
            ),
          ),
          for (var i = 0; i < 5; i++)
            _SkillIndicatior(
              enabled: i < rating,
            ),
        ],
      ),
    );
  }
}

class _SkillIndicatior extends StatelessWidget {
  const _SkillIndicatior({
    required this.enabled,
  });

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Space.hf(0.1),
      padding: Space.all(enabled ? 0.15 : 0.3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [Colors.black, Colors.black.withOpacity(0.45)],
        ),
      ),
      child: enabled
          ? Container(
              padding: Space.all(0.15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 2,
                      color: AppColors.lightBlue.withOpacity(0.5))
                ],
                gradient: RadialGradient(
                  colors: [
                    AppColors.lightBlue.withOpacity(0.85),
                    AppColors.lightBlue,
                    AppColors.lightBlue.withOpacity(0.85),
                  ],
                ),
              ),
            )
          : null,
    );
  }
}
