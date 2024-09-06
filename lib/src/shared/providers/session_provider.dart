import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_provider.g.dart';

@Riverpod(keepAlive: true)
class SessionProvider extends _$SessionProvider {
  @override
  String build() {
    return "";
  }

  Future<void> set(String value) async {
    state = value;
  }

  Future<void> reset()async{
    state = "";
  }

}
