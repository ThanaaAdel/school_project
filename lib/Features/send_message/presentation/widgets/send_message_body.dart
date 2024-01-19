import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/Features/send_message/presentation/manager/cubit/attachments_cubit.dart';
import 'package:school/Features/send_message/presentation/widgets/custom_text_field_container.dart';
import 'package:school/Features/send_message/presentation/widgets/drop_down_search_widget.dart';
import 'package:school/core/utils/assets.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/functions/validation_mixin.dart';

class SendMessageBody extends StatefulWidget {
  const SendMessageBody({super.key});

  @override
  State<SendMessageBody> createState() => _SendMessageBodyState();
}

class _SendMessageBodyState extends State<SendMessageBody>
    with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: context.screenWidth * .05,
          right: context.screenWidth * .05,
          top: context.screenHeight * .05,
        ),
        color: kBackGroundColor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              context.locale.translate("to")!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: DropDownSearchWidget(),
            ),
            Text(
              context.locale.translate("message_title")!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomTextFieldContainer(
              validator: validateInputText,
              height: context.screenHeight * .07,
            ),
            Text(
              context.locale.translate("message_text")!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomTextFieldContainer(
              validator: validateInputText,
              height: context.screenHeight * .2,
            ),
            Text(
              context.locale.translate("attachments")!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () async {
                  await BlocProvider.of<AttachmentsCubit>(context)
                      .pickFileFromDevice();
                },
                child: BlocBuilder<AttachmentsCubit, AttachmentsState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: context.screenHeight * .15,
                      child: BlocProvider.of<AttachmentsCubit>(context)
                                  .fileName !=
                              null
                          ? Center(
                              child: Text(
                                  BlocProvider.of<AttachmentsCubit>(context)
                                      .fileName!),
                            )
                          : Center(
                              child: BlocProvider.of<AttachmentsCubit>(context)
                                              .selectedFile ==
                                          null &&
                                      BlocProvider.of<AttachmentsCubit>(context)
                                              .fileName ==
                                          null
                                  ? Image.asset(
                                      AssetsData.attachIcon,
                                      alignment: Alignment.center,
                                    )
                                  : Image.file(
                                      BlocProvider.of<AttachmentsCubit>(context)
                                          .selectedFile!),
                            ),
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
