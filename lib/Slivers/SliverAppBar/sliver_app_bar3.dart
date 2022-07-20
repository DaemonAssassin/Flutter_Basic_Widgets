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
          slivers: [
            _buildSliverAppBar(),
            _buildSliverList(),
          ],
          physics: const BouncingScrollPhysics(),
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
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.cookie),
      ),
      centerTitle: true,
      // collapsedHeight: 80.0,
      elevation: 8.0,
      excludeHeaderSemantics: false,
      expandedHeight: 200.0,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text('SliverAppBar'),
        collapseMode: CollapseMode.parallax,
        // centerTitle: true,
        expandedTitleScale: 2.0,
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
        ],
        titlePadding: EdgeInsets.zero,
        background: Image.network(
          'https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          fit: BoxFit.cover,
        ),
      ),
      stretchTriggerOffset: 250.0,
      onStretchTrigger: () async {
        // ignore: avoid_print
        print('Stretch');
      },
    );
  }

  Widget _buildSliverList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _buildListItem();
        },
        childCount: 50,
      ),
    );
  }
}
