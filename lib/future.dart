void main() {
  final f1  = Future(info);
  f1.then((value) => print(value)).catchError((error)=>print(error));
  print(1);
}
double info(){
  return 2.0 ;
}