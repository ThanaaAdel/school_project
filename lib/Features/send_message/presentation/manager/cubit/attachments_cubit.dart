import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:file_picker/file_picker.dart';

part 'attachments_state.dart';

class AttachmentsCubit extends Cubit<AttachmentsState> {
  AttachmentsCubit() : super(AttachmentsInitial());
  File? selectedFile;
  String? fileName;
  File? fileSize;
  Future<void> pickFileFromDevice() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.any, allowMultiple: false);
    if (result != null) {
      PlatformFile file = result.files.first;

      if (['jpg', 'jpeg', 'png', 'gif', 'jfif', 'pjpeg', 'pjp', 'svg']
          .any(file.extension!.toLowerCase().contains)) {
        fileName = null;
        selectedFile = File(result.files.single.path!);
        emit(PickImageState(selectedFile!));
      } else {
        selectedFile = File(result.files.single.path!);

        fileName = file.name;
        emit(PickFileState(fileName!, selectedFile!));
      }
    } else {}
  }
}
