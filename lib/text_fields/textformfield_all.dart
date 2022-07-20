import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TextFormFieldWidget());
}

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  // controllers
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  // key
  final GlobalKey<FormState> _signInFromKey = GlobalKey<FormState>();
  // focus nodes
  final FocusNode _userNameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  String username = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: Form(
              key: _signInFromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _usernameController,
                    focusNode: _userNameFocusNode,
                    validator: _usernameValidation,
                    onSaved: (String? input) {
                      username = input!;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                      hintText: 'username',
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    controller: _emailController,
                    focusNode: _emailFocusNode,
                    validator: _emailValidation,
                    onSaved: (String? input) {
                      email = input!;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.email),
                      hintText: 'email',
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    onSaved: (String? input) {
                      password = input!;
                    },
                    validator: _passwordValidation,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.lock),
                      hintText: 'password',
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      bool isValid = _signInFromKey.currentState!.validate();
                      if (isValid) {
                        print('$username, $email, $password');
                        _signInFromKey.currentState!.save();
                        print('$username, $email, $password');
                        print(
                            '${_usernameController.text}, ${_emailController.text}, ${_passwordController.text}');
                      } else {
                        print('Not Valid');
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? _usernameValidation(String? input) {
    if (input!.isEmpty ||
        input.length < 4 ||
        !input.startsWith(RegExp(r'[a-zA-Z]'))) {
      return 'invalid username';
    }
    return null;
  }

  String? _emailValidation(String? input) {
    bool emailValid = RegExp(
            r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
        .hasMatch(input!);
    if (input.isEmpty || !emailValid) {
      return 'invalid email';
    }
    return null;
  }

  String? _passwordValidation(String? input) {
    if (input!.isEmpty || input.length < 8) {
      return 'invalid password';
    }
    return null;
  }
}
