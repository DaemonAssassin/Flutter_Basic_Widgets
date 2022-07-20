import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyAppWidget());
}

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _buildCustomScrollView(),
      ),
    );
  }

  Widget _buildCustomScrollView() {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        _buildSliverAppBar(),
        SliverFillRemaining(
          hasScrollBody: true,
          fillOverscroll: true,
          child: Container(color: Colors.purple),
        ),
      ],
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.home),
      ),
      title: const Text('SliverAppBar'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
      centerTitle: true,
      actionsIconTheme: const IconThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.orange,
      collapsedHeight: 60.0,
      elevation: 8.0,
      excludeHeaderSemantics: false,
      expandedHeight: 200.0,
      floating: true,
      forceElevated: true,
      stretch: true,
      onStretchTrigger: () async {
        print('onStretchTrigger');
      },
      stretchTriggerOffset: 100.0,
      pinned: false,
      primary: true,
      scrolledUnderElevation: 20.0,
      flexibleSpace: const FlexibleSpaceBar(),
    );
  }
}
