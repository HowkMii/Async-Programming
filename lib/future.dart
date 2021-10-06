void main() {
  final f1  = Future(info).then((value) => print(value));
  print(1);
}
double info(){
  return 2.0 ;
}