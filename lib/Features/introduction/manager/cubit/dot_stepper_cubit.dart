import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dot_stepper_state.dart';

class DotStepperCubit extends Cubit<DotStepperState> {
  DotStepperCubit() : super(DotStepperInitial());
  int activeStep = 0;
  void nextStep(int stepIndex) {
    //  emit(DotStepperInitial());

    activeStep = stepIndex;
    emit(DotStepperIsChanging());
  }
}
