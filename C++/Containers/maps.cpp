/*
* Some simple examples using std::map
* #MapsRule!
*/
#include <map>
#include <string>

using namespace std;

map<string, int> roomates_phone_book = {
  {"Carl Cortright", 124},
  {"Louie Branca", 345}
};

/*
* Gets the phone number of person 's'
*/
int get_number(const string& s){
  return roomates_phone_book[s];
}
