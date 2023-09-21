import 'dart:io';

void main() {
  int b=0;
  print(b);
  int n = 6;
  for (int i = 1; i < n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(j);
    }
    print("");}
  int n2 = 1;
  int j=1;
  for (int i = 4; i>=n2; i--) {

    for (int j = 1; j <=i; j++) {
      stdout.write(j);
    }
    print("");
  }
}



