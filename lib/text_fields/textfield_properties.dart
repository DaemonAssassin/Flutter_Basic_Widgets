import 'dart:ui';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TextFieldProperties());
}

class TextFieldProperties extends StatefulWidget {
  const TextFieldProperties({Key? key}) : super(key: key);

  @override
  State<TextFieldProperties> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldProperties> {
  String text = '';
  late final TextEditingController _textEditingController;
  late final ScrollController _scrollController;
  var node1 = FocusNode();
  var node2 = FocusNode();
  var node3 = FocusNode();

  @override
  void initState() {
    super.initState();
    // initializing fields
    _textEditingController = TextEditingController();
    _scrollController = ScrollController();
    setState(() {
      _textEditingController.text = 'Hello';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    autocorrect: true,
                    autofillHints: getAutoFillHints(),
                    autofocus: true,
                    focusNode: node1,
                    clipBehavior: Clip.hardEdge,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(node2);
                    },

                    //! cursor
                    cursorColor: Colors.green,
                    cursorHeight: 22.0,
                    cursorWidth: 2.0,
                    showCursor: true,
                    cursorRadius: const Radius.circular(1000.0),
                    enabled: true,

                    //! evin
                    enableIMEPersonalizedLearning: false,
                    enableInteractiveSelection: true,
                    enableSuggestions: true,
                    // expands: true,
                    keyboardType: TextInputType.multiline,
                    toolbarOptions: const ToolbarOptions(copy: true),

                    // maxLength: 20,
                    minLines: 3,
                    maxLines: 3,
                    mouseCursor: MaterialStateMouseCursor.textable,
                    // obscureText: true,
                    // obscuringCharacter: r'$',
                    controller: _textEditingController,
                    // onAppPrivateCommand: ,
                    onTap: () {
                      setState(() {
                        text = 'oo teri';
                      });
                    },

                    // readOnly: true,
                    maxLength: 800,
                    restorationId: 'uname',
                    scrollController: _scrollController,
                    scrollPadding: const EdgeInsets.all(30.0),

                    selectionHeightStyle: BoxHeightStyle.max,
                    // selectionWidthStyle: BoxWidthStyle.max,
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.purple,
                    ),
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.newline,
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    focusNode: node3,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(node1);
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    focusNode: node2,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(node3);
                    },
                  ),
                  Text(
                    text,
                    style: const TextStyle(fontSize: 36.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // FocusScope.of(context).requestFocus(node3);
            _scrollController.jumpTo(0);
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

  Iterable<String> getAutoFillHints() {
    return Iterable.generate(3, (int index) => 'item $index');
  }
}
