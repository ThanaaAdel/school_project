import 'package:dio/dio.dart';
import 'package:school/Features/send_message/presentation/manager/cubit/attachments_cubit.dart';
import 'package:school/features/splash/data/datasources/language_local_data_source.dart';
import 'package:school/features/splash/data/datasources/language_local_data_source_impl.dart';
import 'package:school/features/splash/data/repositories/language_repository_impl.dart';
import 'package:school/features/splash/domain/repositories/language_repository.dart';
import 'package:school/features/splash/domain/usecases/change_locale_use_case.dart';
import 'package:school/features/splash/domain/usecases/get_saved_lang_use_case.dart';
import 'package:school/features/splash/presentation/manger/locale_cubit/locale_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../features/home/presentation/manager/cubit/bottom_nav_cubit.dart';
import '../../../features/introduction/manager/cubit/dot_stepper_cubit.dart';
import '../api_service.dart';

final getIt = GetIt.instance;
Future<void> init() async {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerFactory<LocaleCubit>(() => LocaleCubit(
      changeLocaleUseCase: getIt.call(), getSavedLangUseCase: getIt.call()));

  getIt.registerLazySingleton<GetSavedLangUseCase>(
      () => GetSavedLangUseCase(languageRepository: getIt.call()));
  getIt.registerLazySingleton<ChangeLocaleUseCase>(
      () => ChangeLocaleUseCase(languageRepository: getIt.call()));

  getIt.registerLazySingleton<LanguageRepository>(
      () => LanguageRepositoryImpl(languageLocalDataSource: getIt.call()));

  getIt.registerLazySingleton<LanguageLocalDataSource>(
    () => LanguageLocalDataSourceImpl(sharedPreferences: getIt()),
  );
  //BottomNavCubit
  getIt.registerFactory<BottomNavCubit>(() => BottomNavCubit());

//DotStepper Cubit
  getIt.registerFactory<DotStepperCubit>(() => DotStepperCubit());
  //FilePickerCubit
  getIt.registerFactory<AttachmentsCubit>(() => AttachmentsCubit());

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
}
