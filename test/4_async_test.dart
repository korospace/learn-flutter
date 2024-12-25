void main() {
  print("A");
  showB();
  print("C");
  showD()
      .then((data) => {print(data)})
      .catchError((err) => {print("error: $err")});
  print("E");
}

void showB() async {
  //   Future(() => {
  //     print("B")
  //   });

  await Future.delayed(Duration(seconds: 2), () => {print("B")});

  print("selesai");
}

Future<String> showD() async {
  await Future.delayed(Duration(seconds: 2));

  //   return "D";
  throw "Mampus";
}
