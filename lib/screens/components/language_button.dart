part of '../dark_cv.dart';

class _LanguageButton extends StatelessWidget {
  const _LanguageButton(this.language);
  final String language;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Language: $language',
      child: Neumorphic(
        margin: Space.z!,
        style: NeumorphicStyle(
          color: AppColors.black6,
          boxShape: const NeumorphicBoxShape.circle(),
          border: NeumorphicBorder(
            color: AppColors.lightBlue,
            width: AppDimensions.normalize(2),
          ),
        ),
        child: Container(
          width: AppDimensions.normalize(28),
          height: AppDimensions.normalize(28),
          alignment: Alignment.center,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Text(language, style: AppText.b3b),
        ),
      ),
    );
  }
}
