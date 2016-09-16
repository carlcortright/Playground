/*
* Examples using std::list
*/
#include <list>
#include <iostream>
#include "Entry.cpp"
using namespace std;

// Defining fuctions
int get_number(const string& s);
void f(const Entry& ee, list<Entry>::iterator p, list<Entry>::iterator q);

list<Entry> phone_book = {
  {"Carl Cortright", 608354},
  {"Hello World",12234}
};

int main(){
  get_number("Carl Cortright");
  return 0;
}

/*
* Gets the number of a contact 's' in the phone book
*/
int get_number(const string& s){
  for(auto p = phone_book.begin(); p!=phone_book.end(); ++p)
    if(p->name == s)
      return p->number;
  return 0;
}

/*
* Adds an element to the list
*/
void f(const Entry& ee, list<Entry>::iterator p, list<Entry>::iterator q){
  phone_book.insert(p, ee);
  phone_book.erase(q);
}
