import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './formatters/credit_card_formatter.dart';
import './formatters/currency_formatter.dart';
import './formatters/telephone_number_formatter.dart';
import './formatters/thousands_formatter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Types',
                ),
                Tab(
                  text: 'Examples',
                ),
              ],
            ),
            title: const Text('Input Formatters'),
          ),
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: ListView(
                children: [
                  const Text(
                    'FilteringTextInputFormatter.allow',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z]+|\s')),
                      FilteringTextInputFormatter
                          .digitsOnly, // the intersection of both
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'FilteringTextInputFormatter.deny',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'LengthLimitingTextInputFormatter',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(8),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: ListView(
                children: [
                  const Text(
                    'Credit card number',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      // You can't put this here to "compose"
                      // because spaces will not be allowed to show then
                      // FilteringTextInputFormatter.digitsOnly,
                      CreditCardFormatter(separator: '*'),
                      LengthLimitingTextInputFormatter(
                          19), // 16 digits + 3 separators
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Telephone number',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      TelephoneNumberFormatter(separator: '.'),
                      LengthLimitingTextInputFormatter(
                          12), // 10 digits + 2 separators
                      // UsNumberTextInputFormatter(),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Thousands grouping',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    inputFormatters: [ThousandsFormatter()],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Decimal number',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [ThousandsFormatter(allowFraction: true)],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Number with negative',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(signed: true),
                    inputFormatters: [
                      ThousandsFormatter(
                        allowNegative: true,
                        allowFraction: true,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Currency value',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [CurrencyInputFormatter()],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
