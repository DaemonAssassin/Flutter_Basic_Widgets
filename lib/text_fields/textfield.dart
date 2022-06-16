import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyTextField());
}

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300.0,
                child: TextField(
                  decoration: InputDecoration(
                    // https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25
                    //! fill
                    filled: true,
                    fillColor: Colors.red.shade100,

                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 10.0),
                    ),

                    //! hint
                    hintText: 'Hint',
                    hintMaxLines: 1,
                    hintTextDirection: TextDirection.ltr,
                    hintStyle: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black38,
                    ),

                    //! label
                    // label: const Icon(Icons.email),
                    labelText: 'Label',
                    labelStyle: const TextStyle(fontSize: 18.0),
                    // alignLabelWithHint: true,
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    floatingLabelStyle: const TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                    ),

                    //! helperText
                    helperText:
                        'Helper Text Helper Text Helper Text Helper Text Helper Text ',
                    helperMaxLines: 1,
                    helperStyle: const TextStyle(fontStyle: FontStyle.italic),

                    //! hover
                    hoverColor: Colors.cyan.shade100,

                    //! prefix
                    prefix: const Icon(Icons.cookie),
                    prefixIcon: const Icon(Icons.cabin),
                    prefixIconColor: Colors.orange,

                    //! suffix
                    suffixText: "How are you?",
                    suffixIcon: const Icon(Icons.baby_changing_station),
                    suffixIconColor: Colors.green,
                    suffixStyle: const TextStyle(),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              SizedBox(
                // width: 300.0,
                child: TextField(
                  decoration: InputDecoration(
                    //! fill
                    filled: true,
                    fillColor: Colors.red.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 10.0),
                    ),

                    //! hint
                    hintText: 'Hint',
                    hintMaxLines: 1,
                    hintTextDirection: TextDirection.ltr,
                    hintStyle: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black38,
                    ),

                    //! label
                    label: const Icon(Icons.email),
                    // labelText: 'Label',
                    labelStyle: const TextStyle(fontSize: 18.0),
                    // alignLabelWithHint: true,
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,

                    //! helperText
                    helperText:
                        'Helper Text Helper Text Helper Text Helper Text Helper Text ',
                    helperMaxLines: 1,
                    helperStyle: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),

                    //! hover
                    hoverColor: Colors.cyan.shade100,

                    //! prefix
                    // prefix: const Icon(
                    //   Icons.cookie,
                    //   color: Colors.red,
                    // ),
                    prefixIcon: const Icon(Icons.cabin),
                    prefixIconColor: Colors.orange,
                    prefixText: 'Prefix Text',
                    prefixStyle: const TextStyle(
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.red,
                    ),
                    // prefixIconConstraints: const BoxConstraints(
                    //   minHeight: 90,
                    //   minWidth: 90,
                    //   maxHeight: 120,
                    //   maxWidth: 120,
                    // ),

                    //! suffix
                    suffix: const Icon(Icons.cabin),
                    suffixIcon: const Icon(Icons.baby_changing_station),
                    suffixIconColor: Colors.green,
                    constraints: const BoxConstraints(
                      minHeight: 150.0,
                      maxHeight: 300.0,
                      minWidth: 100.0,
                      maxWidth: 600.0,
                    ),

                    // contentPadding: const EdgeInsets.all(60.0),

                    //! counter
                    // counter: const Icon(Icons.countertops_outlined),
                    counterText: "10/100",
                    counterStyle: const TextStyle(fontSize: 24.0),
                    enabled: true,
                    disabledBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(width: 5.0, color: Colors.purple),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.green, width: 3.0),
                    ),

                    //! error text and borders
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 3.0),
                    ),
                    errorText: 'No email found',
                    errorMaxLines: 1,
                    errorStyle: const TextStyle(),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.orange, width: 3.0),
                    ),
                    focusColor: Colors.black,

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.lime, width: 3.0),
                    ),

                    icon: const Icon(Icons.email),

                    isCollapsed: false,

                    isDense: false,

                    semanticCounterText: 'Counter text',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
