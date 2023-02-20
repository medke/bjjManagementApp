// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bjj_members_management/data/mappers/mapper.dart' as _i8;
import 'package:bjj_members_management/di/di_module.dart' as _i9;
import 'package:bjj_members_management/features/classes/classes_cubit.dart'
    as _i3;
import 'package:bjj_members_management/features/club/club.dart' as _i4;
import 'package:bjj_members_management/features/login/login.dart' as _i6;
import 'package:bjj_members_management/features/members/members.dart' as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectorModule = _$InjectorModule();
    gh.lazySingleton<_i3.ClassesCubit>(() => _i3.ClassesCubit());
    gh.lazySingleton<_i4.ClubCubit>(() => _i4.ClubCubit());
    gh.lazySingleton<_i5.FlutterSecureStorage>(
        () => injectorModule.flutterSecureStorage);
    gh.lazySingleton<_i6.LoginCubit>(() => _i6.LoginCubit());
    gh.lazySingleton<_i7.MemberCubit>(() => _i7.MemberCubit());
    gh.lazySingleton<_i8.MemberMapper>(() => _i8.MemberMapper());
    return this;
  }
}

class _$InjectorModule extends _i9.InjectorModule {}
