import 'env.dart';

Future<void> main() async => Development().init();

class Development extends Env {
  final EnvType envType = EnvType.development;
  final String baseUrl = 'http://yakynyol.com.tm/';
  final bool writeLogs = true;
}
