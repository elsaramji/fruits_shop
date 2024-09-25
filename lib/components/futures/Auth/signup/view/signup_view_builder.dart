// components/futures/Auth/signup/view/signup_view_builder.dart

import 'package:flutter/material.dart';

import 'package:fruits_shop/components/futures/Auth/signup/logics/singup_logics_state.dart';
import 'package:fruits_shop/service/firebase/auth/auth_service.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../../service/state/sginup_cubit/sginup_cubit.dart';



class Signup extends StatelessWidget {
  static const route = '/signup';
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(FirebaseAuthService()),
      child: Builder(builder: (context) {
        return BlocConsumer<SignupCubit, SignupState>(
          listener: SignupLogicsState.singupBlocListener,
          builder: SignupLogicsState.singupBlocBuilder,
        );
      }),
    );
  }
}

