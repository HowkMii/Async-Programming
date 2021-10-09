void main() {
    Future.delayed(Duration(seconds: 2),()=>2)
    .then((value)=>print('value=$value'))
    .catchError((e)=>print('error=$e'));
    print(1);

    final s1= Stream.periodic(Duration(milliseconds: 500),(a)=>a);
    final sub =s1.listen((_)=> _);
    sub.onData((data) => data>10?sub.cancel():print(data));


}