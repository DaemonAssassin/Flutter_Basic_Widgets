import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(FormValidation());
}

class FormValidation extends StatelessWidget {
  FormValidation({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _phoneNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _phoneNoController,
                  validator: (String? input) {
                    // ignore: avoid_print
                    print(input);
                    return checkValidNumber(input ?? '') && input!.isNotEmpty
                        ? null
                        : 'Invalid Number';
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Number',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _formKey.currentState?.validate();
          },
          child: const Icon(Icons.save),
        ),
      ),
    );
  }
}

bool checkValidNumber(String input) {
  for (int index = 0; index < input.length; index++) {
    if (!isDigitKey(input.codeUnitAt(index))) {
      return false;
    }
  }
  return true;
}

bool isDigitKey(int charCode) {
  return charCode >= LogicalKeyboardKey.digit0.keyId &&
      charCode <= LogicalKeyboardKey.digit9.keyId;
}
