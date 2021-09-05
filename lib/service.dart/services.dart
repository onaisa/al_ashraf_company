import 'dart:convert';

import 'package:alashraf/models/loginmodle.dart';
import 'package:alashraf/models/usersmodel.dart';

import 'package:http/http.dart' as http;

class AuthService {
  Future<UserModel> authUser(LoginModel model) async {
    http.Response response = await http.post(Uri.parse('url'),
        body: jsonEncode(model),
        headers: {'Content-Type': 'application/json;charset=utf-8'});

    // stause code 223 .....message

    UserModel userModel = UserModel.fromjson(jsonDecode(response.body));
    return userModel;
  }
}
