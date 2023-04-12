part of '../dark_cv.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    super.key,
    required this.data,
  });

  final Map data;

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['course'],
                  style: AppText.b2b,
                ),
                Text(
                  data['batch'],
                  style: AppText.b3!.cl(Colors.white60),
                ),
                Text(
                  data['college'],
                  style: AppText.b3!.w(6),
                )
              ],
            ),
          ),
          CircleBG(
              margin: Space.z,
              child: Container(
                color: Colors.white,
                padding: Space.all(),
                child: AppImage(
                  data['img'],
                  width: AppDimensions.normalize(17),
                ),
              ))
        ],
      ),
    );
  }
}
