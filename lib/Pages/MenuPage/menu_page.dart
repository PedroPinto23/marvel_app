import 'package:flutter/material.dart';
import 'package:marvel_app/Pages/MenuPage/components/menu_page_tile.dart';
import 'package:marvel_app/components/loading_widget.dart';
import 'package:marvel_app/components/title_widget.dart';
import 'package:marvel_app/models/data/characters.dart';
import 'package:marvel_app/repository/fetch_character.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 180,
            title: TitleWidget(),
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          FutureBuilder<MarvelCharacters>(
            future: marvel.getCharacters(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return SliverToBoxAdapter(
                  child: LoadingWidget(),
                );
              } else {
                final char = snapshot.data.data.results;
                return SliverGrid.count(
                  crossAxisCount: 1,
                  childAspectRatio: 3 / 2,
                  children: char.map((e) => MenuPageTile(result: e)).toList(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
