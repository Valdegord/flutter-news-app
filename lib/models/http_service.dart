import 'package:dio/dio.dart'; 

class DioSettings{ 
  final baseUrl='http://content.guardianapis.com/search?q=debates&api-key=test';
   late Dio _dio;  
  DioSettings(){
     _dio=Dio();

   }
  
  Future<Response> getRequest() async{
     Response response; 

     try {
       response=await _dio.get('http://content.guardianapis.com/search?q=debates&api-key=test');
     } on DioError catch (e) {
        print(e.message); 
        throw Exception(e.message);
     } 
      return response;
  } 

   

}