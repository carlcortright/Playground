/*
* Some simple examples using std::unordered_map
*/
#include <unordered_map>
#include <string>

using namespace std;

unordered_map<string, int> phone_book = {
  {"Carl Cortright", 123},
  {"Louie Branca", 456}
};

/*
* Gets the phone number of person 's'
*/
int get_number(const string& s){
  return phone_book[s];
}
