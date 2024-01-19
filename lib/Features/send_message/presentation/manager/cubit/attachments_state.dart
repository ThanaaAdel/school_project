part of 'attachments_cubit.dart';

@immutable
abstract class AttachmentsState {}

class AttachmentsInitial extends AttachmentsState {}

class PickFileState extends AttachmentsState {
  final String fileName;
  final File filePath;

  PickFileState(this.fileName, this.filePath);
}

class PickImageState extends AttachmentsState {
  final File imagePath;

  PickImageState(this.imagePath);
}
