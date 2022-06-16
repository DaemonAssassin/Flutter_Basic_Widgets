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
          child: SizedBox(
            width: 600.0,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //! No Decoration
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'simple',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! icon
                  const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.star),
                      hintText: 'icon',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! prefixIcon
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.star),
                      hintText: 'prefix icon',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! suffix icon
                  const TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.star),
                      hintText: 'suffix icon',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! prefix
                  TextField(
                    decoration: InputDecoration(
                      prefix: Container(
                        width: 10,
                        height: 10,
                        color: Colors.red,
                      ),
                      hintText: 'prefix',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! prefix text
                  const TextField(
                    decoration: InputDecoration(
                      prefixText: 'Hello',
                      hintText: 'prefix text',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Hint text
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Hint text',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Suffix text
                  const TextField(
                    decoration: InputDecoration(
                      suffixText: 'Suffix text',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Label text
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Label text',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Helper text
                  const TextField(
                    decoration: InputDecoration(
                      helperText: 'Helper Text',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Error text
                  const TextField(
                    decoration: InputDecoration(
                      errorText: 'Error text',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Counter text
                  const TextField(
                    decoration: InputDecoration(
                      counterText: 'Counter text',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Counter
                  TextField(
                    decoration: InputDecoration(
                      counter: Container(
                        width: 10,
                        height: 10,
                        color: Colors.red,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //? Floating label behavior
                  //! Auto
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'auto',
                      hintText: 'Floating label behavior auto',
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  //! Always
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'always',
                      hintText: 'Floating label behavior always',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Never
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'never',
                      hintText: 'Floating label behavior never',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //? Border
                  //! None
                  const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'border none',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Underline
                  const TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'border underline',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Outline
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'border outline',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Outline with border radius
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: 'border Outline with border radius',
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Filled | FilledColor
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      hintText: 'Filled | FilledColor',
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  //* Condensed
                  //? The yellow container is there to show you the size of the TextField.
                  //! false
                  Container(
                    color: Colors.yellow,
                    child: const TextField(
                      decoration: InputDecoration(
                        isCollapsed: false,
                        hintText: 'Condensed false',
                      ),
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  Container(
                    color: Colors.yellow,
                    child: const TextField(
                      decoration: InputDecoration(
                        isCollapsed: true,
                        hintText: 'Condensed true',
                      ),
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Combined effects
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: const OutlineInputBorder(),
                      labelText: 'label',
                      hintText: 'hint',
                      helperText: 'help',
                      counterText: 'counter',
                      icon: const Icon(Icons.star),
                      prefixIcon: const Icon(Icons.favorite),
                      suffixIcon: const Icon(Icons.park),
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Dense
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: const OutlineInputBorder(),
                      labelText: 'label',
                      hintText: 'hint',
                      helperText: 'help',
                      counterText: 'counter',
                      icon: const Icon(Icons.star),
                      prefixIcon: const Icon(Icons.favorite),
                      suffixIcon: const Icon(Icons.park),
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  //! Content padding
                  const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(40),
                      filled: true,
                      fillColor: Colors.lime,
                      border: OutlineInputBorder(),
                      labelText: 'label',
                      hintText: 'hint',
                      helperText: 'help',
                      counterText: 'counter',
                      icon: Icon(Icons.star),
                      prefixIcon: Icon(Icons.favorite),
                      suffixIcon: Icon(Icons.park),
                    ),
                  ),

                  const SizedBox(height: 16.0),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
