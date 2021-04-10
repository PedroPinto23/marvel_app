import 'package:flutter/material.dart';
import 'package:marvel_app/Pages/MenuPage/menu_page_tile.dart';
import 'package:marvel_app/models/characters.dart';
import 'package:marvel_app/repository/fetch_data.dart';
import 'package:marvel_app/widgets/loading_widget.dart';
import 'package:marvel_app/widgets/title_widget.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 200,
              title: TitleWidget(),
              centerTitle: true,
            ),
            FutureBuilder<MarvelCharacters>(
              future: FetchData().getCharacters(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return SliverToBoxAdapter(child: LoadingWidget());
                } else {
                  final char = snapshot.data.data.results;
                  return SliverGrid.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 2 / 3,
                    children: char.map((e) => MenuPageTile(result: e)).toList(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
