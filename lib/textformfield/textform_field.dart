import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(const TextFormFieldWidget());
}

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _userName = 'no_user_name';
  bool _isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 600.0,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'username',
                      labelText: 'username',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                    ),
                    // inputFormatters: [],
                    validator: (String? value) {
                      bool isEmpty = value!.isEmpty;
                      bool hasAppropriateLength = value.length > 4;
                      bool startsWithChar =
                          value.startsWith(RegExp(r'[a-zA-Z]'));
                      bool hasNumber = value.contains(RegExp(r'[0-9]'));
                      if (isEmpty) {
                        return 'Email is empty';
                      } else if (!startsWithChar) {
                        return 'username must be starts with a-z or A-Z';
                      } else if (!hasAppropriateLength) {
                        return 'username should be 4+ chars';
                      } else if (hasNumber) {
                        return 'username must not contain any number';
                      }
                      return null;
                    },
                    onSaved: (String? input) {
                      _userName = input!;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'email',
                      labelText: 'email',
                      border: OutlineInputBorder(),
                      // focusedBorder:
                      //     OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      //     errorBorder:
                      //     OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    ),
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(
                    //     RegExp(r'[0-9 a-zA-Z]'),
                    //     replacementString: '*',
                    //   ),
                    // ],

                    validator: (String? input) {
                      bool validEmail = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!>#$%&'*-/<)(=?^_`|}{~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(input!);
                      if (!validEmail) {
                        return 'Email Invalid';
                      }
                      return null;
                    },

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: _isPasswordObscure,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isPasswordObscure = !_isPasswordObscure;
                          });
                        },
                        icon: Icon(_isPasswordObscure
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      hintText: 'password',
                      labelText: 'password',
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                    ),
                    // inputFormatters: [],
                  ),
                  const SizedBox(height: 16),
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {
                          bool isValid = _formKey.currentState!.validate();
                          if (isValid) {
                            _formKey.currentState?.save();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Save'),
                              ),
                            );
                            print(_userName);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Error'),
                              ),
                            );
                            print(_userName);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromWidth(600),
                        ),
                        child: const Text('Save'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
