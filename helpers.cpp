# include <iostream>

using namespace std;

extern "C" int read () {
  int d = 0;
  cin >> d;
  return d;
}

extern "C" void write (int n) {
  cout << n << endl;
}
