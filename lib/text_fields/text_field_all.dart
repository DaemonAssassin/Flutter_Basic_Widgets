import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(const MyTextFieldApp());
}

class MyTextFieldApp extends StatefulWidget {
  const MyTextFieldApp({Key? key}) : super(key: key);

  @override
  State<MyTextFieldApp> createState() => _MyTextFieldAppState();
}

class _MyTextFieldAppState extends State<MyTextFieldApp> {
  final _usernameController = TextEditingController();

  final FocusNode custom = FocusNode();
  String _username = 'username';

  @override
  void initState() {
    super.initState();

    _usernameController.addListener(() {
      setState(() => _username = _usernameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_username);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    constraints: BoxConstraints(
                        // minWidth: 200.0,
                        // maxWidth: 300.0,
                        ),
                    contentPadding: EdgeInsets.all(30.0),
                    counter: Text('Counter'),
                    counterText: 'Counter Text',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    labelText: 'Username',
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    icon: Icon(Icons.home),
                    iconColor: Colors.orange,
                    // isCollapsed: true,
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: _usernameController.text.isEmpty
                        ? const SizedBox(width: 0.0)
                        : IconButton(
                            onPressed: () {
                              _usernameController.clear();
                            },
                            icon: const Icon(Icons.cancel),
                          ),
                  ),
                  autocorrect: true,
                  controller: _usernameController,
                  // autofillHints: true,
                  buildCounter: (
                    BuildContext context, {

                    /// The length of the string currently in the input.
                    required int currentLength,

                    /// The maximum string length that can be entered into the TextField.
                    required int? maxLength,

                    /// Whether or not the TextField is currently focused.  Mainly provided for
                    /// the [liveRegion] parameter in the [Semantics] widget for accessibility.
                    required bool isFocused,
                  }) {
                    return Text('$currentLength / ${maxLength ?? 10}');
                  },
                  enableIMEPersonalizedLearning: true,
                  // controller: _usernameController,
                  enableInteractiveSelection: true,
                  enableSuggestions: true,
                  toolbarOptions: const ToolbarOptions(),
                  selectionControls: MaterialTextSelectionControls(),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: _username,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  focusNode: custom,
                  onSubmitted: (String input) {
                    setState(() {
                      _username = input;
                    });
                  },
                  onChanged: (String input) {
                    setState(() {
                      _username = input;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'username',
                    border: OutlineInputBorder(),
                  ),
                  controller: _usernameController,
                ),
                const SizedBox(height: 16.0),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  inputFormatters: [
                    // FilteringTextInputFormatter.digitsOnly,
                    FilteringTextInputFormatter.singleLineFormatter,
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Z0-9<,.>]'),
                      replacementString: '@',
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // FocusScope.of(context).requestFocus(FocusNode());
                    // custom.skipTraversal = true;
                    print('hahaha ${_usernameController.text}');
                  },
                  child: const Text('Request'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
