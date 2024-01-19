import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

class CustomLoginTextField extends StatefulWidget {
  final TextEditingController? controller;

  final String stringInTextField;
  final String textLabel;

  final bool obscureText;
  final TextInputType textInputType;
  final double? height;
  final double? width;
  final int? multiLine;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;

  const CustomLoginTextField({
    Key? key,
    this.width,
    this.prefixIcon,
    this.multiLine,
    required this.stringInTextField,
    required this.textInputType,
    required this.obscureText,
    this.height,
    this.controller,
    this.validator,
    required this.textLabel,
  }) : super(key: key);

  @override
  State<CustomLoginTextField> createState() => _CustomLoginTextFieldState();
}

class _CustomLoginTextFieldState extends State<CustomLoginTextField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 10, horizontal: widget.width != null ? 0 : 30),
      child: Stack(
        alignment: Alignment.topRight,
        clipBehavior: Clip.none,
        children: [
          TextFormField(
              textAlignVertical: TextAlignVertical.top,
              controller: widget.controller,
              validator: widget.validator,
              obscureText: widget.obscureText ? obscure : false,
              keyboardType: widget.textInputType,
              maxLines: widget.multiLine ?? 1,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintStyle: const TextStyle(
                    color: Color(0xff9d9d9e),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
                hintText: widget.stringInTextField,

                prefixIconConstraints:
                    const BoxConstraints(minWidth: 35, minHeight: 0),

                prefixIcon: widget.prefixIcon != null
                    ? widget.prefixIcon!
                    : const SizedBox(),

                suffix: widget.obscureText
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        child: Icon(
                            obscure
                                ? CupertinoIcons.eye_slash
                                : CupertinoIcons.eye,
                            color: Colors.grey),
                      )
                    : const SizedBox(),
                errorStyle: const TextStyle(fontSize: 10, height: 0.1),
                filled: true,
                // focusedErrorBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 5, horizontal: 10), // space of text
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFCCC6C6),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFCCC6C6),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFCCC6C6),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              )),
          Positioned(
            bottom: widget.multiLine != null
                ? context.screenSize.height * 0.125
                : context.screenSize.height * 0.05,
            right: context.locale.isEnLocale
                ? null
                : context.screenSize.width * .03,
            left: context.locale.isEnLocale
                ? context.screenSize.width * .03
                : null,
            child: Container(
              width: widget.multiLine == null
                  ? context.screenWidth * .25
                  : context.screenWidth * .4,
              height: 30,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFCCC6C6)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                widget.textLabel,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: context.screenWidth * .03,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.51,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
