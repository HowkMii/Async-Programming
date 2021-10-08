void main() {
  final s1= Stream.periodic(Duration(milliseconds: 500),(a)=>a+5);
  final sub =s1.listen((_)=>_);
  sub.onDone(() => print('Done'));
  sub.onData((data) { data >10?sub.cancel():print(data);})
}