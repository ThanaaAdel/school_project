import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../../../core/utils/functions/validation_mixin.dart';
import '../../../../../../core/widgets/custom_simple_app_bar.dart';

class TermsAndConditionsBody extends StatefulWidget {
  const TermsAndConditionsBody({super.key});

  @override
  State<TermsAndConditionsBody> createState() => _TermsAndConditionsBodyState();
}

class _TermsAndConditionsBodyState extends State<TermsAndConditionsBody>
    with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSimpleAppBar(
          isNav: true,
          appBarTitle: context.locale.translate('terms_and_conditions')!,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("نرجو منكم قراءة الشروط والأحكام",
                  style: TextStyle(
                      color: Color(0xff282828),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 15),
                  textAlign: TextAlign.left),
              SizedBox(
                height: 5,
              ),
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
