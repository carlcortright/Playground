#include <vector>
#include <string>


struct Entry{
  string name;
  int number;
}

void main(){
  // Declare a new vector that represents the user's phone book
  vector<Entry> rocketeers_phone_book = {
    {"Elon Musk", 123456},
    {"Carl Cortright", 111111},
    {"Jeff Bezos ", 222222}
  };
}

void print_book(const vector<Entry>& Book){
  for(const auto& x : book)
    cout << x << '\n';
}
