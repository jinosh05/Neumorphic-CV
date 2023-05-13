import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/configs/space_ext.dart';
import 'package:neumorphic_cv/configs/ui.dart';
import 'package:neumorphic_cv/configs/util_methods.dart';
import 'package:neumorphic_cv/constants/colors.dart';
import 'package:neumorphic_cv/constants/strings.dart';
import 'package:neumorphic_cv/env.dart';
import 'package:neumorphic_cv/screens/components/profile_pic.dart';
import 'package:neumorphic_cv/widgets/animated_gradient.dart';
import 'package:neumorphic_cv/widgets/app_image.dart';
import 'package:neumorphic_cv/widgets/shadowed_text.dart';
import 'package:neumorphic_cv/widgets/software_widget.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';
import 'package:neumorphic_cv/widgets/links_buttons.dart';

import '../widgets/app_info_widget.dart';
import '../widgets/circle_bg.dart';
import '../widgets/skill_widget.dart';

part 'components/education_card.dart';
part 'components/experience_card.dart';
part 'components/language_button.dart';
part 'components/technical_card.dart';
part 'dark_cv_mobile.dart';
part 'dark_cv_desktop.dart';
part 'components/profile_info_header.dart';

class DarkCV extends StatelessWidget {
  const DarkCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // height: UI.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.black2, AppColors.black3],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          child: UI.isPortrait ? const _DarkCVMobile() : _DarkCVDesktop()
          //  ScreenTypeLayout.builder(
          //   mobile: (context) {
          //     return _DarkCVMobile();
          //   },
          //   desktop: (context) {
          //     return const _DarkCVDesktop();
          //   },
          // ),
          ),
    );
  }
}
