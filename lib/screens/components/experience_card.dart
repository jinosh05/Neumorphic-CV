part of '../dark_cv.dart';

class _ExperienceCard extends StatelessWidget {
  const _ExperienceCard(this.data);
  final Map data;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: Space.z!.b(1.5),
      padding: Space.all(),
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(AppDimensions.normalize(7))),
        shadowLightColor: Colors.black,
        shadowDarkColor: AppColors.black2,
        depth: AppDimensions.normalize(1),
        color: AppColors.black5,
        border: const NeumorphicBorder(color: AppColors.black5),
        lightSource: LightSource.top,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Neumorphic(
            margin: Space.z!.t(1),
            padding: Space.all(0.2),
            style: NeumorphicStyle(
              boxShape: const NeumorphicBoxShape.circle(),
              shape: NeumorphicShape.flat,
              depth: AppDimensions.normalize(5),
              intensity: 0.9,
              shadowDarkColor: Colors.black,
              shadowLightColor: AppColors.black5,
              color: AppColors.black4,
              border: const NeumorphicBorder(color: AppColors.black5),
              lightSource: LightSource.top,
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: AppImage(
                data['logo'],
                width: AppDimensions.normalize(15),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: Space.hf(0.25).l(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['company'].toUpperCase(),
                  style: AppText.l1b,
                ),
                Padding(
                  padding: Space.vf(0.25),
                  child: Text(
                    data['position'].toUpperCase(),
                    style: AppText.l1b,
                  ),
                ),
                Text(
                  data['duration'],
                  style: AppText.l1b,
                ),
                NeumorphicButton(
                  onPressed: () async {
                    await launchLink(data['site']);
                  },
                  margin: Space.z!.t(0.75),
                  padding: Space.all(0.75, 0.25),
                  style: NeumorphicStyle(
                    depth: AppDimensions.normalize(1),
                    color: AppColors.black2,
                    border: const NeumorphicBorder(color: AppColors.black5),
                  ),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        data['btnTitle'],
                        style: AppText.l1!,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Text(
              data['experience'],
              textAlign: TextAlign.left,
              style: AppText.l1,
            ),
          ),
        ],
      ),
    );
  }
}
