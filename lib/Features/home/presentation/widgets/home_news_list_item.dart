import 'package:flutter/material.dart';
import 'package:school/features/home/presentation/widgets/custom_home_container.dart';
import 'package:school/core/utils/assets.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';

class HomeNewsListItem extends StatelessWidget {
  const HomeNewsListItem({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomHomeContainer(
      color: color,
      width: context.screenWidth,
      height: context.screenHeight * .17,
      child: Row(children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            AssetsData.newsImage,
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "يتم وضع عنوان الخبر هنا ",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gaps.vGap10,
                const Text(
                  "يتم هنا وضع نبذة صغيرة عن الخبر المنشور وسيتم وضع التفاصيل فى صفحة",
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.50,
                  ),
                ),
                Gaps.vGap10,
                Row(
                  children: [
                    Image.asset(AssetsData.calenderIcon),
                    Gaps.hGap10,
                    const Text(
                      "5-7-2023",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
