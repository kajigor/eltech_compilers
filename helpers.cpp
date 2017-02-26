# include <iostream>

using namespace std;

/**
* Функции помощники для чтения и вывода
* Extern C нужен, иначе не будет нужных символов и код не слинкуется
*/

// number будет в eax
extern "C" int fnread () {
  int number = 0;
  cin >> number;
  return number;
}

// в 32-х битном асме аргумент передаётся через eax
extern "C" void fnwrite (int n) {
  cout << n << endl;
}
