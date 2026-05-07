import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teknikal_2/di/dependency_injection.dart';
import 'package:teknikal_2/features/auth/domain/entities/user_entity.dart';
import 'package:teknikal_2/features/auth/domain/usecases/login_usecase.dart';

final authProvider = AsyncNotifierProvider.autoDispose<AuthNotifier, User?>(() {
  return AuthNotifier();
});

class AuthNotifier extends AsyncNotifier<User?> {
  @override
  FutureOr<User?> build() {
    // Di sini biasanya kita cek apakah user sudah login sebelumnya (dari Local Storage)
    // Untuk sekarang, kita return null (belum login)
    return null;
  }

  Future<void> login(String username, String password) async {
    state = const AsyncLoading();
    try {
      final loginUseCase = getIt<LoginUseCase>();
      final data = await loginUseCase.call(username, password);
      state = AsyncData(data);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }
}
