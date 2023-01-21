import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugasakhir/controller/authentications/dio_http.dart';
import 'package:tugasakhir/controller/preferences/hexcolor_convert.dart';
import 'package:tugasakhir/controller/routes/name_routes.dart';
import 'package:tugasakhir/pages/authentication/login/section/login_component_section.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // variabel warna convert dari hexcolor
  final _bgPrimary = HexColor("#FFFFFF");
  final _bgSecondary = HexColor("#59B4B5");
  // variabel untuk autentikasi
  final _formKey = GlobalKey<FormState>();
  late bool _passwordVissible = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late String? email;
  late String? password;
  late bool _isLoading = false;

  Future<dynamic> _login() async {
    var data = {
      'email': email,
      'password': password,
    };
    try {
      setState(() {
        _isLoading = true;
      });
      var response = await DioHttp.request.post('/api/login', data: data);
      print(response.data);

      setState(() {
        _isLoading = false;
      });

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('user-token', response.data['token']);

      Get.toNamed(RouteName.home);
    } on DioError catch (dioError) {
      var message = '';

      switch (dioError.response!.statusCode) {
        case 400:
          setState(() {
            _isLoading = false;
          });
          print(dioError.response!.data['message'].toString());
          message = dioError.response!.data['message'].toString();
          break;

        case 404:
          setState(() {
            _isLoading = false;
          });
          message = 'Server Not Found';
          break;

        default:
          setState(() {
            _isLoading = false;
          });
          message = 'Server Error';
          break;
      }

      final snackBar = SnackBar(
        content: const Text('Login Failed'),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoadingOverlay(
          isLoading: _isLoading,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 50, right: 50, left: 50),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoSection(bgPrimary: _bgPrimary),
                    Container(
                      child: Column(
                        children: [
                          EmailSection(),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.only(top: 5),
                            child: TextFormField(
                              validator: (String? emailValue) {
                                if (emailValue!.isEmpty) {
                                  return 'Please enter email here!';
                                }
                                email = emailValue;
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'What\'s your email?',
                                hintStyle: const TextStyle(
                                    color: Colors.grey, fontSize: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          PasswordSection(),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.only(top: 5),
                            child: TextFormField(
                              obscureText: !_passwordVissible,
                              validator: (String? passwordValue) {
                                if (passwordValue!.isEmpty) {
                                  return 'Please enter password here!';
                                }
                                password = passwordValue;
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Your password?',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVissible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVissible = !_passwordVissible;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            margin: const EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _login();
                                }
                              },
                              child: const Text('Login'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _bgSecondary,
                                foregroundColor: _bgPrimary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          RegisterButtonSection(
                              bgPrimary: _bgPrimary, bgSecondary: _bgSecondary),
                        ],
                      ),
                    ),
                    ForgetPasswordSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
