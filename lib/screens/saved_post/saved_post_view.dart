import 'package:flutter/material.dart';

import '../../product/utility/constants/image_path.dart';

class SavedPostView extends StatefulWidget {
  const SavedPostView({super.key});

  @override
  State<SavedPostView> createState() => _SavedPostViewState();
}

class _SavedPostViewState extends State<SavedPostView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          _postCard( likeCount: "60",location: "Nevsehir, Turkey", username: "username",),

        ],
      ),
    );
  }
}

class _postCard extends StatelessWidget {
  const _postCard({
    super.key, required this.username, required this.location, required this.likeCount
  });
  final String username;
  final String location;
  final String likeCount;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow:  [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 25.0
          )
        ]
      ),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),// kenarlarını yuvarlar stadium görüntüsü verir
        child: SizedBox(height: 300,width: 500,
          child: Column(
            children: [
             Container(
               height: 40,
               child: Row(
                 children: [
                   Container(

                     child: Row(

                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset(ImagePath().profilImg, width: 30,),
                         ),
                          _Text(text:username,)
                       ],
                     ),
                   ),
                   Spacer(),
                   Container(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Icon(Icons.location_on_outlined, color: Colors.orange,),
                           _Text(text: location,)
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             Container(
               height: 220,
               child: Image.asset(ImagePath().cappadociaImg),
             ),
             Container(
               height: 40,
               child: Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Icon(Icons.favorite , color: Colors.orange),
                   ),

                   _Text(text: likeCount+" beğenme"),
                   Spacer(),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Icon(Icons.bookmark , color: Colors.orange),
                   ),
                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500
    ),);
  }
}
