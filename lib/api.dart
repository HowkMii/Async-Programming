import 'dart:html';

import 'package:http/http.dart' as ht;
void main(){

}

fetchAlbum(){
  final url='https://jsonplaceholder.typicode.com/albums'; 
  final Future<ht.Response> res=ht.get(Uri.parse(url));
}