import 'dart:html';

import 'package:http/http.dart' as ht;
void main(){

}

fetchAlbum()async{
  final url='https://jsonplaceholder.typicode.com/albums'; 
  final ht.Response res=await ht.get(Uri.parse(url));
}