import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as ht;
import 'dart:convert';
void main()async{
  var str=await fetchAlbum();
  print(str);

}

Future<dynamic> fetchAlbum()async{
  final url='https://jsonplaceholder.typicode.com/albums'; 
  final  res=await ht.get(Uri.parse(url));
  
  
  if (res.statusCode==200) {
    var obj=json.decode(res.body);
    return obj[0]['title'];
  }else{
  throw Exception('Error!');
  }
}