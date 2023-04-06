part of '../dark_cv.dart';

class _TechnicalCard extends StatelessWidget {
  const _TechnicalCard(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: AnimateGradient(
        primaryBegin: Alignment.centerLeft,
        primaryEnd: Alignment.topRight,
        secondaryBegin: Alignment.topRight,
        secondaryEnd: Alignment.centerLeft,
        duration: const Duration(
          seconds: 2,
        ),
        primaryColors: const [
          AppColors.lightBlack,
          AppColors.black2,
          AppColors.black6,
          AppColors.black4,
        ],
        secondaryColors: const [
          AppColors.black2,
          AppColors.black6,
          AppColors.black4,
          AppColors.lightBlack,
        ],
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppDimensions.normalize(10),
            ),
          ),
          padding: Space.all(),
          child: Row(
            children: [
              Container(
                padding: Space.all(0.35),
                margin: Space.z!.r(0.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.red,
                    ),
                    BoxShadow(
                      color: Colors.yellow,
                      spreadRadius: -AppDimensions.normalize(1),
                      blurRadius: AppDimensions.normalize(1),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  text,
                  style: AppText.b3b,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
