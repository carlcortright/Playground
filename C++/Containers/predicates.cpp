/*
* An example of using predicates and function objects to generalize container
* algorithms.
*/
#include <algorithm>
#include <string>
#include <map>

using namespace std;

struct Greater_than{
  int val;
  Greater_than(int v): val{v} { }
  bool operator()(const pair<string, int>& r) { return r.second > val; }
};

void f(map<string, int>& m){
  // We pass in a functor that defines what it means to be Greater_than
  auto p = find_if(m.begin(), m.end(), Greater_than{42});
}
