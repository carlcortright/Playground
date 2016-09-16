#include <string>
#include <iostream>

using namespace std;
/*
* User defined type to perform io on
*/
class Entry{
public:
  string name;
  int number;
  Entry(string name, int number): name{name}, number{number} {}
  friend ostream& operator<<(ostream& os, const Entry& e){
    return os << "{\"" << e.name << "\"," << e.number << "}";
  }
};
