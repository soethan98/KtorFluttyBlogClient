// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:ktorfluttyblog_client/data/data_sources/auth_data_source.dart'
    as _i4;
import 'package:ktorfluttyblog_client/data/repo/auth_repo_impl.dart' as _i6;
import 'package:ktorfluttyblog_client/di/injectable_module.dart' as _i7;
import 'package:ktorfluttyblog_client/domain/auth_repo.dart' as _i5;

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
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i3.GoogleSignIn>(() => injectableModule.googleSignIn);
    gh.lazySingleton<_i4.AuthDataSource>(
        () => _i4.AuthDataSourceImpl(googleSignIn: gh<_i3.GoogleSignIn>()));
    gh.lazySingleton<_i5.AuthRepo>(
        () => _i6.AuthRepoImpl(authDataSource: gh<_i4.AuthDataSource>()));
    return this;
  }
}

class _$InjectableModule extends _i7.InjectableModule {}
