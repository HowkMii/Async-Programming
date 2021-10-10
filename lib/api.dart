import 'dart:html';

import 'package:http/http.dart' as ht;
import 'dart:convert';
void main(){

}

Future<dynamic> fetchAlbum()async{
  final url='https://jsonplaceholder.typicode.com/albums'; 
  final  res=await ht.get(Uri.parse(url));
  
  
  if (res.statusCode==200) {
    var obj=json.decode(res.body);
    return obj;
  }else{
  throw Exception('Error!');
  }
}