import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as ht;
import 'dart:convert';
void main()async{
  var data=await fetchAlbum();
  
  for(var i=0;i<100;i++){
  print(data[i]['title']);
  }

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