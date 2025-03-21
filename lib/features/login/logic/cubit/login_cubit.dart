import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sleman_store_app/core/constants/shared_pref_keys.dart';

import 'package:sleman_store_app/core/helpers/shared_pref_helper.dart';
import 'package:sleman_store_app/core/networking/dio_factory.dart';
import 'package:sleman_store_app/features/login/data/models/login_request_body.dart';
import 'package:sleman_store_app/features/login/data/repos/login_repo.dart';
import 'package:sleman_store_app/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    LoginRequestBody loginRequestBody = LoginRequestBody(
        username: userNameController.text, password: passwordController.text);
    final response = await _loginRepo.login(loginRequestBody);
    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.token ?? '');
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
