import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/configs/app_dimensions.dart';
import 'package:neumorphic_cv/configs/app_typography.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/constants/colors.dart';

// Conditional import: dart:html on web, dart:io on native
import 'download_resume_web.dart'
    if (dart.library.io) 'download_resume_native.dart';

class DownloadResumeButton extends StatelessWidget {
  const DownloadResumeButton({super.key});

  Future<void> _handleDownload(BuildContext context) async {
    try {
      await triggerDownload();
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Could not open resume: $e'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Download Resume PDF',
      button: true,
      child: Tooltip(
        message: 'Download Resume (PDF)',
        child: NeumorphicButton(
          onPressed: () => _handleDownload(context),
          margin: Space.z,
          padding: Space.all(0.5, 0.35),
          style: NeumorphicStyle(
            depth: AppDimensions.normalize(1),
            color: AppColors.black4,
            border: const NeumorphicBorder(color: AppColors.black5),
            lightSource: LightSource.top,
          ),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                Icons.download_rounded,
                size: AppDimensions.font(8),
                color: AppColors.lightBlue,
              ),
              Space.x!,
              Text('Resume', style: AppText.l1!),
              Space.x!,
            ],
          ),
        ),
      ),
    );
  }
}
