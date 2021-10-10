import 'dart:html';

import 'package:http/http.dart' as ht;
void main(){

}

fetchAlbum()async{
  final url='https://jsonplaceholder.typicode.com/albums'; 
  final  res=await ht.get(Uri.parse(url));
  
  if (res.statusCode==200) {
    res.body;
    
  }else{
  throw Exception('Error!');
  }
}