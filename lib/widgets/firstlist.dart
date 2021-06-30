import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/http_service.dart';
import 'package:movie_app/models/news.dart';
import 'package:movie_app/models/user.dart';  
import '../models/response.dart';

class FirstList extends StatefulWidget { 

  @override
  _FirstListState createState() => _FirstListState();
}

class _FirstListState extends State<FirstList> { 

  late DioSettings http; 
  late User users; 
  late UserResponse firstData;   
  late List<News>? news;
   
    
  bool isLoading = false;

  Future getUser() async { 
    Response response; 

    try {
      isLoading = true;
      response = await http.getRequest();
      isLoading = false;
      // print(response.statusCode);
      // print(response.data);
    
      if (response.statusCode == 200) {
        setState(() {
          firstData=UserResponse.fromJson(response.data); 
          users=firstData.users;  
          news=users.news as List<News>;

        });
      } else {
        print('something is wrong');
      }
    } on Exception catch (e) { 
      isLoading=false; 
      print('loading went wrong');
      print(e);
    } 
    
  } 
   
   @override
   void initState() {   
     http=DioSettings();     
     getUser();
     super.initState(); 
   } 

   List images=[
      'https://i.pinimg.com/originals/06/19/22/0619223e49e389d61ddd3fe89eb32f97.jpg',  
      'https://cdn5.vectorstock.com/i/1000x1000/57/94/mass-media-political-news-breaking-news-banner-vector-15085794.jpg',  
      'https://guidetogreatergainesville.com/wp-content/uploads/2020/09/best-colleges.jpg',  
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_Ck-6pjOHuw1U-c2B3gxDf1doKczFteIunA&usqp=CAU',  
      'https://pbs.twimg.com/profile_images/739632149129728000/ZXzULz2y.jpg', 
      'https://cnn.com/audio/static/images/podcasts/inside-politics-square-o.jpg', 
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD1j9_fPk5amJmymRjwaCzSMKClDDmqvqN8A&usqp=CAU', 
      'https://cdn5.vectorstock.com/i/1000x1000/43/84/press-conference-stage-meeting-news-media-vector-22274384.jpg',   
      'https://lh3.googleusercontent.com/proxy/1WBuuzl8o-VKD81P3n3FlZNCcGAZegj9hcqw9yArWtMSoM74rsMqvXFLgx4zVFOki5qGitlQeXEb1no9uUYPakHBiHjDIy7h_dc1XJF48WibO7TetIx1lajphvIkrfXRrCMxJ1ICZBStBoqM2VehBXWE_HiP6NClMZkgTHPGm9fbzpVR_t3DNrHGDCeVBNE7Peff01YwLwMGHSTFOVmpeLXSwqzyIbUvL_lwogDmWeUHO9e45IE4xmWUKOex-fkT',
      'https://globalnews.ca/wp-content/uploads/2020/01/australia_wild_fire_map_3q59_2.2-e1578083360504.png',
   ];




  @override
  Widget build(BuildContext context) {
    return  isLoading? Center(child: CircularProgressIndicator(),):Container(  
      width: double.infinity,
      child: news!.isEmpty? Container(child: Text('used empty list'),): ListView.builder(  
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index){ 
          final newsDate=news![index];
           return GestureDetector( 
             onTap: (){

             },
             child: Container(    
               
               margin: EdgeInsets.all(10),
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.blue, ),
               height: 60, 
               width: 110,  
               padding: EdgeInsets.all(10),
               child: Column( 
                 //mainAxisAlignment: MainAxisAlignment.end, 
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [ 
                   Image.network(images[index], fit: BoxFit.cover,), 
                   Spacer(),
                   Text(newsDate.sectionName.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),), 
                   Text(newsDate.type.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),)
                 ],
               ),
             ),
           );
        } ,
       itemCount: news!.length,),
    );
  }
}