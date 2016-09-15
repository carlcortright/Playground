#include <iostream>

using namespace std;

/*
* Basic printing of an integer to the output stream
*/
void f(){
  int i {10};
  cout << 10;
}

/*
* Mixing types printed to the output stream
*/
void g(int i){
  cout << "The value of i is ";
  cout << i;
  cout << "\n";
}

void g2(int i){
  cout << "The value of i is " << i << "\n";
}

/*
* Input stream examples
*/
void i(){
  int i;
  cin >> i;

  double d;
  cin >> d;
}

/*
* Say hi to the user
*/
void hello(){
  string hello {"Please enter your name: "};
  cout << hello;
  string name;
  cin >> name;
  cout << "Hello, " << name;
}

void hello2() {
  string hello {"Please enter your name: "};
  cout << hello;
  string name;
  getline(cin, name);
  cout << "Hello, " << name;
}


/*
* User defined type to perform io on
*/
class Entry{
  string name;
  int number;
public:
  Entry(string name, int number): name{name}, number{number} {}
  friend ostream& operator<<(ostream& os, const Entry& e){
    return os << "{\"" << e.name << "\"," << e.number << "}";
  }
};
