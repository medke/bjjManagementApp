import 'package:bjj_members_management/di/di.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InjectedBlocProvider<B extends BlocBase<Object>> extends BlocProvider<B> {
  InjectedBlocProvider({
    Key? key,
    bool lazy = false,
    void Function(B)? onCreate,
    Widget? child,
  }) : super(
          key: key,
          create: (context) {
            final bloc = getIt<B>();
            onCreate?.call(bloc);
            return bloc;
          },
          lazy: lazy,
          child: child,
        );
}
