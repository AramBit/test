import 'package:flutter/material.dart';
import '../presentation/colors.dart';

class ProfileParametersBloc extends StatelessWidget {
  const ProfileParametersBloc({
    super.key,
    required this.leftWidget,
    required this.rightWidget,
  });
  final Widget leftWidget;
  final Widget rightWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15,),
      padding: const EdgeInsets.only(
        left: 10,
        right: 17,
        bottom: 13,
        top: 13,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.uiWhite,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [leftWidget, const Spacer(), rightWidget],
      ),
    );
  }
}
