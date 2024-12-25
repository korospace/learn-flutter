void main() {
  int hasil = count(2, 10);
  print(hasil);

  countVoid(1,9);
}

int count(int a, int b) {
  return a + b;
}

void countVoid(int a, int b) {
  print(a+b);
}
