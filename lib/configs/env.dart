import 'package:app_1point2_store/core/utils/get_storage.dart';

class Env {
  // static const baseUrl = "https://astrokoolam-api-harsh-js.koyeb.app";
  // static const baseUrl = "http://35.154.253.180";
  static var baseUrl = getString("env_base_url") ?? "https://api.1point2percent.com";
  // static const baseUrl = "http://192.168.1.12:8080";
  static var name = getString("env_name") ?? "Production";
}
