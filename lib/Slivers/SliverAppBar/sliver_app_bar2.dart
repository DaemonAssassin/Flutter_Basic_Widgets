import 'package:flutter/material.dart';

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
            SliverAppBar(
              leading: const Icon(Icons.arrow_back),
              title: const Text('Sliver List'),
              centerTitle: true,
              actions: const [
                Icon(Icons.open_in_browser),
              ],
              automaticallyImplyLeading: true,
              expandedHeight: 200.0,
              collapsedHeight: 80.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const Text('Sliver Spacebar'),
                background: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.network(
                        'https://images.pexels.com/photos/11789773/pexels-photo-11789773.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),
              ),
              floating: true,
              // pinned: true,
              // snap: true,
              stretch: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                  _buildListItem(),
                ],
              ),
            ),
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
}
