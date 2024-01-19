import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/assets.dart';
import 'custom_home_container.dart';

class HomeChildrenListItemWidget extends StatelessWidget {
  const HomeChildrenListItemWidget({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomHomeContainer(
        color: color,
        height: context.screenHeight*0.2,
        width: context.screenWidth * .2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: context.screenHeight * .04,
              backgroundImage: const AssetImage(AssetsData.childImage),
            ),
            // SizedBox(
            //   height: context.screenHeight * .01,
            // ),
            const Text(
              "أحمد محمد أحمد",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: context.screenHeight * .009,
            ),
            const Text(
              "50.000  ر.س",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: context.screenHeight * .013,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(AssetsData.cartIcon),
                      SizedBox(
                        width: context.screenWidth * .01,
                      ),
                      SizedBox(
                        width: context.screenWidth * .1,
                        child: Text(
                          "30.000 ر.س",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: context.screenWidth * .018,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(AssetsData.coinsIcon),
                      SizedBox(
                        width: context.screenWidth * .01,
                      ),
                      SizedBox(
                        width: context.screenWidth * .1,
                        child: Text(
                          "20.000 ر.س",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: context.screenWidth * .018,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
