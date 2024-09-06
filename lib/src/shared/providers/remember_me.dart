import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remember_me.g.dart';

@Riverpod(keepAlive: true)
class RememberMe extends _$RememberMe {
  @override
  bool build() {
    return false;
  }

  Future<void> set(bool value) async {
    state = value;
  }

  Future<void> reset()async{
    state = false;
  }

}
