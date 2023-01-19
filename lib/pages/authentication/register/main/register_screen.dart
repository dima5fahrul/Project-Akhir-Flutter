import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:tugasakhir/controller/authentications/dio_http.dart';
import 'package:tugasakhir/controller/preferences/hexcolor_convert.dart';
import 'package:tugasakhir/controller/routes/name_routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _bgPrimary = HexColor("#F9F9F9");
  final _bgSecondary = HexColor("#59B4B5");

  var _passwordVissible = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late String? name;
  late String? username;
  late String? email;
  late String? password;
  late bool _isLoading = false;

  Future<dynamic> _registerSubmit() async {
    var data = {
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    };

    try {
      print(data);
      setState(() {
        _isLoading = true;
      });
      var response = await DioHttp.request.post('/api/register', data: data);
      print(response.data);

      setState(() {
        _isLoading = false;
      });

      final snackBar = SnackBar(
        content: const Text('Success create account'),
        backgroundColor: _bgSecondary,
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Get.toNamed(RouteName.login);
    } on DioError catch (dioError) {
      var message = '';

      switch (dioError.response!.statusCode) {
        case 422:
          Map<String, dynamic> _errorData = dioError.response!.data['errors'];
          var getListMessage = _errorData.values;

          var result = getListMessage.map((item) =>
              item.toString().substring(1, item.toString().length - 2));

          setState(() {
            _isLoading = false;
          });
          message = result.join('\n');
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
          message = 'Server Error, Something went wrong';
          break;
      }
      final snackBar = SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: LoadingOverlay(
          isLoading: _isLoading,
          child: Container(
            margin: const EdgeInsets.only(top: 50, right: 50, left: 50),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: _bgPrimary,
                      width: 180,
                      height: 115,
                      child: Image.asset("assets/logos/logo_splash.png"),
                    ),
                    Container(
                      child: Column(
                        children: [
                          // -------------------------------Name---------------------------
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            alignment: Alignment.topLeft,
                            child: const Text('Name'),
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.only(top: 5),
                            child: TextFormField(
                              validator: (String? nameValue) {
                                if (nameValue!.isEmpty) {
                                  return 'Please input your name here!';
                                }
                                name = nameValue;
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Input your name here',
                                hintStyle: const TextStyle(
                                    color: Colors.grey, fontSize: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          // --------------------------------Username---------------------------
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            alignment: Alignment.topLeft,
                            child: const Text('Username'),
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.only(top: 5),
                            child: TextFormField(
                              validator: (String? usernameValue) {
                                if (usernameValue!.isEmpty) {
                                  return 'Please input your username here!';
                                }
                                username = usernameValue;
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Don\'t forget your username',
                                hintStyle: const TextStyle(
                                    color: Colors.grey, fontSize: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          // --------------------------------Email---------------------------
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            alignment: Alignment.topLeft,
                            child: const Text('Email'),
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.only(top: 5),
                            child: TextFormField(
                              validator: (String? emailValue) {
                                if (emailValue!.isEmpty) {
                                  return 'Please input your email here!';
                                }
                                email = emailValue;
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Also your email',
                                hintStyle: const TextStyle(
                                    color: Colors.grey, fontSize: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          // --------------------------------Password---------------------------
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text('Password'),
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.only(top: 5),
                            child: TextFormField(
                              validator: (String? passwordValue) {
                                if (passwordValue!.isEmpty) {
                                  return 'Please input your password here!';
                                }
                                password = passwordValue;
                                return null;
                              },
                              obscureText: !_passwordVissible,
                              decoration: InputDecoration(
                                hintText: 'Of course your password too',
                                hintStyle: const TextStyle(
                                    color: Colors.grey, fontSize: 15),
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
                          // --------------------------------Create Button---------------------------
                          Container(
                            width: 300,
                            margin: const EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _registerSubmit();
                                }
                              },
                              child: const Text('Create Account'),
                              style: ElevatedButton.styleFrom(
                                primary: _bgSecondary,
                                onPrimary: _bgPrimary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // --------------------------------Already have account?---------------------------
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have account?'),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(RouteName.login);
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(color: _bgSecondary),
                            ),
                          ),
                        ],
                      ),
                    ),
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
