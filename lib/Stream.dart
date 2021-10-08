void main() {
  final s1= Stream.periodic(Duration(milliseconds: 500),(a)=>a+5);
  final sub =s1.listen((event) => print(event),onError: (err)=>print(err),onDone: ()=>print('Done'));
  sub.onDone(() => print('Done'));
}