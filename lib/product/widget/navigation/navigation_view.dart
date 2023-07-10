import 'package:flutter/material.dart';

import '../../../screens/gallery/gallery_view.dart';
import '../../../screens/saved_post/saved_post_view.dart';
import '../../utility/constants/image_path.dart';
import '../../utility/constants/light_color.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> with TickerProviderStateMixin{

  late final TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController= TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        leading: Icon(Icons.chevron_left_rounded, color: Colors.white,),
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.menu_rounded, color: Colors.white,)),
        ],
        backgroundColor: LightColor().orange,



        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),

          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(ImagePath().profilImg),
                  ),
                  Text("Doğukan Göktaş", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: TabBar(
                indicatorColor: Colors.white,

                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                      text: "Fotoğraflarım",
                    ),
                    Tab(
                      text: "Kaydedilenler",
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),


      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(

            child: Padding(
              padding: EdgeInsets.only(top:45.0),
              child: GalleryView(),
            ),
          ),
          Center(
            child: SavedPostView(),
          ),

        ],
      ),
    );
  }
}


