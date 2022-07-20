import 'package:flutter/material.dart';

//! Slivers
//* A sliver is a portion of a scrollable area.
//* You can use slivers to achieve custom scrolling effects.
// https://medium.com/swlh/flutter-slivers-and-customscrollview-1aaadf96e35a

void main(List<String> args) {
  runApp(const SliverAppBarWidget());
}

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            _buildSliverAppBar(),
            _buildSliverGridItem(),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem() {
    return Container(
      color: Colors.orange,
      height: 100.0,
      margin: const EdgeInsets.all(4.0),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      title: const Text('SliverAppBar'),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
      // collapsedHeight: 100.0,
      elevation: 30.0,
      excludeHeaderSemantics: false,
      expandedHeight: 200.0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.remove),
      ),
      floating: false,
      pinned: true,
      snap: false,
      backgroundColor: Colors.green,
      actionsIconTheme: const IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      forceElevated: true,
      // foregroundColor: Colors.pink,
      iconTheme: const IconThemeData(color: Colors.purple),
      // leadingWidth: 100,
      primary: true,
      scrolledUnderElevation: 20.0,
      shadowColor: Colors.red,
      onStretchTrigger: () async {},
      stretch: true,
      stretchTriggerOffset: 200.0,
      surfaceTintColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.pink,
        ),
      ),
    );
  }

  Widget _buildSliverGridItem() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _buildListItem();
        },
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    );
  }
}
