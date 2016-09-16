#include <vector>
#include <string>
#include <iostream>
#include "Entry.cpp"

using namespace std;


int main(){
  // Declare a new vector that represents the user's phone book
  vector<Entry> rocketeers_phone_book = {
    {"Elon Musk", 123456},
    {"Carl Cortright", 111111},
    {"Jeff Bezos ", 222222}
  };

  return 0;
}

void print_book(const vector<Entry>& Book){
  for(const auto& x : Book)
    cout << x << '\n';
}
