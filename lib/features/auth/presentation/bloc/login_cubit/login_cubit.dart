import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
}
