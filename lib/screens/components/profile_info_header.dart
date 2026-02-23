part of '../dark_cv.dart';

class _ProfileInfoHeader extends StatelessWidget {
  const _ProfileInfoHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Space.all(1.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfilePic(),
          Space.x1!,
          Expanded(
            child: SelectionArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Space.y!,
                  Text(Env.name, style: AppText.b2b!.gilda()),
                  Space.yf(0.25),
                  Text(
                    Env.profession.toUpperCase(),
                    style: AppText.b3b!.gilda().copyWith(
                      color: AppColors.lightBlue,
                      shadows: [const Shadow(color: AppColors.darkBlue)],
                    ),
                  ),
                  Space.yf(0.25),
                  SizedBox(
                    width: AppDimensions.width(60),
                    child: Text(Env.address, style: AppText.l1b),
                  ),
                  Space.y1!,
                  UI.isPortrait ? const SizedBox() : const _LinksWrap(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LinksWrap extends StatelessWidget {
  const _LinksWrap();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppDimensions.space(),
      runSpacing: AppDimensions.space(),
      children: [
        for (var i = 0; i < Env.btnlinks.length; i++)
          LinksButtons(data: Env.btnlinks[i]),
      ],
    );
  }
}
