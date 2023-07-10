import 'package:flutter/material.dart';

import '../../utility/constants/image_path.dart';
import '../../utility/constants/light_color.dart';

class Deneme3View extends StatefulWidget {
  const Deneme3View({super.key});

  @override
  State<Deneme3View> createState() => _Deneme3ViewState();
}

class _Deneme3ViewState extends State<Deneme3View> {
  TabController? _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left_rounded, color: Colors.white,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu_rounded, color: Colors.white,)),
        ],
        backgroundColor: LightColor().orange,
        bottom:PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: Container(
            height: 150.0,
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:0),
                  child: Image.asset(ImagePath().profilImg),
                ),
                Text("Doğukan Göktaş", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),)
              ],
            ),
          ),
        ),
      ),


      body:const TabBarView(

        children: <Widget>[
          NestedTabBar('Profil'),

        ],
      ),



    );
  }
}




class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
   _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
         controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Overview'),
            Tab(text: 'Specifications'),
          ],
        ),
        Expanded(
          child: TabBarView(
          controller: _tabController,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('${widget.outerTab}: Overview tab')),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(
                    child: Text('${widget.outerTab}: Specifications tab')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

