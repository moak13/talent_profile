import 'package:get_it/get_it.dart';

import 'data/talent_profile_model.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => TalentProfileModel.load());
}
