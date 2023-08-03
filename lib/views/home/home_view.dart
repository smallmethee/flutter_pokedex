import 'package:flutter/material.dart';
import 'package:flutter_pokedex/components/pokeball_background.dart';
import 'package:flutter_pokedex/data/categories.dart';
import 'package:flutter_pokedex/data/entities/category.dart';
import 'package:flutter_pokedex/views/home/components/category_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

part 'components/header_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: NestedScrollView(
          headerSliverBuilder: (_, __) => [
                SliverAppBar(
                  expandedHeight: 500.h,
                  floating: true,
                  pinned: true,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  backgroundColor: Colors.white,
                  flexibleSpace: const FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    centerTitle: false,
                    background: _HeaderCard(),
                  ),
                ),
              ],
          body: Text('data')),
    );
  }
}
