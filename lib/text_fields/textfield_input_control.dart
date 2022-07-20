import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TextFieldWidget());
}

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  String text = '';
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    // initializing fields
    _textEditingController = TextEditingController()
      ..addListener(() => setState(() => text = _textEditingController.text));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(
                  constraints: BoxConstraints(
                    minWidth: 300,
                    maxWidth: 600,
                  ),
                ),
                // onSubmitted: (String inputText) {
                //   print('submitted');
                //   setState(() => text = inputText);
                // },
                onEditingComplete: () {
                  print('editing');
                  setState(() {
                    text = _textEditingController.text;
                  });
                },
                // onChanged: (String inputText) {
                //   setState(() {
                //     text = inputText;
                //   });
                // },
                // controller: _textEditingController,
              ),
              const SizedBox(height: 30.0),
              TextField(
                decoration: const InputDecoration(
                  constraints: BoxConstraints(
                    minWidth: 300,
                    maxWidth: 600,
                  ),
                ),
                onSubmitted: (String inputText) {
                  setState(() => text = inputText);
                },
                // onEditingComplete: ,
                onChanged: (String inputText) {
                  setState(() {
                    text = inputText;
                  });
                },
                // controller: _textEditingController,
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 36.0),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // setState(() {
            //   text = _textEditingController.text;
            // });
          },
          child: const Icon(Icons.graphic_eq_outlined),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
