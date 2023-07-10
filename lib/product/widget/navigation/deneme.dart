import 'package:flutter/material.dart';

import '../../utility/constants/image_path.dart';
import '../../utility/constants/light_color.dart';

class DenemeView extends StatefulWidget {
  const DenemeView({super.key});

  @override
  State<DenemeView> createState() => _DenemeViewState();
}

class _DenemeViewState extends State<DenemeView> with TickerProviderStateMixin{

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

        leading: Icon(Icons.chevron_left_rounded, color: Colors.white,),
    actions: [
    IconButton(onPressed: () {},
    icon: Icon(Icons.menu_rounded, color: Colors.white,)),
    ],
    backgroundColor: LightColor().orange,



        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(170.0),

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

              TabBar(
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
            ],
          ),
        ),


      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),

        ],
      ),
    );
  }
}


