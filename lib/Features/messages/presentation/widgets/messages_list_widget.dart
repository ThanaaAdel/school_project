import 'package:flutter/cupertino.dart';
import 'package:school/core/utils/helper.dart';

import 'message_list_item_widget.dart';

class MessagesListWidget extends StatelessWidget {
  const MessagesListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      // padding: EdgeInsets.only(top: context.screenHeight * .02),
      padding: EdgeInsets.symmetric(
        vertical: context.screenHeight * .01,
        horizontal: context.screenWidth * .035,
      ),
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const MessagesListItemWidget();
      },
    );
  }
}
