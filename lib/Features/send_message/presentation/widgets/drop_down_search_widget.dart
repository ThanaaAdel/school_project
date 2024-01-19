import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/constants.dart';
import 'check.dart';

class DropDownSearchWidget extends StatelessWidget {
  const DropDownSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownSearch.multiSelection(
      dropdownDecoratorProps: DropDownDecoratorProps(),
      dropdownBuilder: (context, selectedItems) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          leading: Icon(
            selectedItems.isNotEmpty
                ? Icons.check_box
                : Icons.check_box_outline_blank,
            color: kPrimaryColor,
          ),
          title: Text(
            selectedItems.isEmpty
                ? "Select employees to send message "
                : selectedItems.length == 3
                    ? "All employees selected"
                    : "selected ${selectedItems.length} employees",
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
      //   key: _multiKey,
      items: ["أحمد", "محمد", "محمود"],
      // itemAsString: (Datum? item) =>
      //     item!.employee!,
      //selectedItems: [],
      // enabled: false,
      clearButtonProps: const ClearButtonProps(
        isVisible: true,
        icon: Icon(
          Icons.close,
          size: 24,
          color: kPrimaryColor,
        ),
      ),
      popupProps: PopupPropsMultiSelection.menu(
          validationWidgetBuilder: (ctx, selectedItems) {
            return Container(
              color: kPrimaryColor,
              height: context.screenHeight * .1,
              child: Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  child: const Text(
                    'Select',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    // _multiKey.currentState
                    //     ?.popupOnValidate();

                    // Navigator.pop(context);
                  },
                ),
              ),
            );
          },
          containerBuilder: (ctx, popupWidget) {
            return CheckBoxWidget(
              isSelected: false,
              onChanged: (v) {
                // if (v == true) {
                //   _multiKey.currentState!
                //       .popupSelectAllItems();
                // } else if (v == false) {
                //   _multiKey.currentState!
                //       .popupDeselectAllItems();
                // }
                // _handleCheckBoxState();
              },
              child: popupWidget,
            );
          },
          //  showSelectedItems: true,
          showSearchBox: true,
          selectionWidget: (context, item, isSelected) {
            return Icon(
              isSelected ? Icons.check_box : Icons.check_box_outline_blank,
              color: kPrimaryColor,
            );
          },
          textDirection: TextDirection.rtl,
          constraints: BoxConstraints.tight(const Size.fromHeight(400)),
          searchFieldProps: TextFieldProps(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  // alignLabelWithHint: false,
                  //   border: InputBorder.none,
                  hintText: "search",
                  suffixIcon: Container(
                    decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  )))

          // disabledItemFn: (String s) => s.startsWith('I'),
          ),
      // validator: (value) {
      //   selectedEmpId.clear();
      //   if (value == null || value.isEmpty) {
      //     return locale
      //         .translate('enter_valid_data')!;
      //   } else {
      //     for (var item in value) {
      //       //     if (selectedEmpId.contains(item)) {}
      //       selectedEmpId
      //           .add(int.parse(item.userId!));
      //     }

      //     return null;
      //   }
      // },
      onChanged: (value) {
        // if (value.length == employeesList.length) {
        //   popupBuilderSelection = true;
        // } else {
        //   popupBuilderSelection = false;
        // }
        // print(selectedEmpId);
      },
    );
  }
}
