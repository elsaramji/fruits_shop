// components/futures/Auth/signin/views/Signin.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_shop/components/futures/Auth/signin/widgets/main_viwe.dart';
import 'package:fruits_shop/core/custom/widgets/custom_errors_massage.dart';
import 'package:fruits_shop/core/custom/widgets/custom_loadingProgress.dart';
import 'package:fruits_shop/core/injection/Git_it.dart';
import 'package:fruits_shop/service/state_management/sginin_cubit/siginin_cubit_cubit.dart';
import '../../../../../core/custom/widgets/custom_Appbar.dart';
import '../../../../../service/firebase/auth/auth_service.dart';

class Signin extends StatelessWidget {
  static const route = '/login_view';
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'تسجيل الدخول',
      ),
      body: BlocProvider(
        create: (context) => SigninCubit(getIt<FirebaseAuthService>()),
        child: Builder(builder: (context) {
          return BlocConsumer<SigninCubit, SigninState>(
            listener: (context, state) {
              if (state is SigninError) {
                ErrorsMassage.errorsBar(context, state.error);
              }
              if (state is SigninSuccess) {
                ErrorsMassage.errorsBar(context, 'تم تسجيل الدخول بنجاح');
              }
            },
            builder: (context, state) {
              return CustomLoadingProgress(
                  isOn: state is SigninLoading ? true : false,
                  child: SinginMainViwe());
            },
          );
        }),
      ),
    );
  }
}
