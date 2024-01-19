import 'package:flutter/material.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../../../core/utils/functions/validation_mixin.dart';
import '../../../../../../core/widgets/custom_simple_app_bar.dart';

class PrivacyAndPolicyBody extends StatefulWidget {
  const PrivacyAndPolicyBody({super.key});

  @override
  State<PrivacyAndPolicyBody> createState() => _PrivacyAndPolicyBodyState();
}

class _PrivacyAndPolicyBodyState extends State<PrivacyAndPolicyBody>
    with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSimpleAppBar(
          appBarTitle: context.locale.translate('privacy_policy')!,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("نرجو منكم قراءة  سياسة الخصوصيه",
                  style: TextStyle(
                      color: Color(0xff282828),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 15),
                  textAlign: TextAlign.left),
              Gaps.vGap15,
              Text(
                "يتم هنا وضع نبذة صغيرة عن الخبر المنشور وسيتم وضع التفاصيل فى صفحة يتم هنا وضع نبذة صغيرة عن الخبر المنشور وسيتم وضع التفاصيل فى صفحة يتم هنا وضع نبذة صغيرة عن الخبر المنشور وسيتم وضع التفاصيل فى صفحة يتم هنا وضع نبذة صغيرة عن الخبر المنشور وسيتم وضع التفاصيل فى صفحة يتم هنا وضع نبذة صغيرة عن الخبر المنشور وسيتم وضع التفاصيل فى صفحة ",
                textAlign: TextAlign.right,
              )
            ],
          ),
        )
      ],
    );
  }
}
