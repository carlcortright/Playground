/*
* Some examples using the standard library sort and find algorithms
*/
#include "Entry.cpp"
#include <list>
#include <vector>
#include <string>
#include <algorithm>

using namespace std;

/*
* Sorts and returns a list with the elements of vec
*/
list<Entry> f(vector<Entry>& vec){
  list<Entry> res;
  sort(vec.begin(), vec.end());
  unique_copy(vec.begin(), vec.end(),back_inserter(res));
  return res;
}

/*
* Returns true if the string s has the character c
*/
bool has_c(string& s, char c){
  auto p = find(s.begin(), s.end(), c);
  if(p != s.end())
    return true;
  else
    return false;
}

/*
* Returns a vector of iterators to all the instances of the character c
*/
vector<string::iterator> find_all(string& s, char c){
  vector<string::iterator> res;
  for(auto p = s.begin(); p!=s.end(); p++)
    if(*p == c)
      res.push_back(p);
  return res;
}

/*
* A test of the original version of find_all()
*/
void test(){
  string m{"Mary had a little lamb"};
  for(auto p : find_all(m,'a'))
   if (*p != 'a')
    cout << "Error!!!! We found a bug!";
}

/*
* A generalized find_all rountine for any std container
*/
template<typename C, typename V>
vector<typename C::iterator> find_all(C& c, V v){
  vector<typename C::iterator> res;
  for(auto p = c.begin(); p <= c.end(); p++)
    if(*p == v)
      res.push_back(p);
  return res;
}
