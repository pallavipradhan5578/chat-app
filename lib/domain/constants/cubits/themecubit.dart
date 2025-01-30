import 'package:demo/domain/constants/cubits/themestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeStates> {
  ThemeCubit() : super(LightThemeStates());

  void toggleTheme() {
    if (state is LightThemeStates) {
      emit(DarkThemeStates());
    } else {
     emit (LightThemeStates());
    }
  }
}
