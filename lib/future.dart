void main() {
  final f1  = Future(info);
  f1.then((value) => print('value=$value')).catchError((error)=>print('error=$error'));
  print(1);
}
double info(){
  return double.parse('df4444') ;
}