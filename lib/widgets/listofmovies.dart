import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:movie_app/widgets/firstlist.dart';

class ListOfMovies extends StatelessWidget {
  String date() {
    return Jiffy().yMMM;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date(),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400]),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Latest News!',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white), 
                ), 
                Spacer(), 
                Icon(Icons.person)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                decoration: InputDecoration(
              labelText: 'Search movie by name',
              filled: true,
              fillColor: Colors.blue[900],
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueAccent,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),   
            Divider(
              height: 8, 
              color: Colors.indigo[900],
            ),  
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Breaking News', 
                  style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),
                ), 
                Spacer(),  
                TextButton(onPressed: (){}, child: Text('More', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 15),))
              ],
            ),
             Container(  
               height: 180,  
               width: double.infinity,
               child: FirstList(),
             ),
             SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'From this week', 
                  style: TextStyle( color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),
                ), 
                Spacer(),  
                TextButton(onPressed: (){}, child: Text('More', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 15),))
              ],
            ),
             Container(  
               height: 180,  
               width: double.infinity,
               child: FirstList(),
             ),
          ],
        ),
        ] 
      ),
    );
  }
}
