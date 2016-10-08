/*
* Some examples using tuples and pairs
*/
#include <vector>
#include <tuple>
#include <string>
#include <algorithm>
#include <iostream>

using namespace std;

struct Record{
  string name;
  Record(string str): name{str} {}
};

auto rec_eq = [](const Record& r1, const Record& r2) { return r1.name < r2.name; };

void f(const vector<Record>& v){
  auto er = equal_range(v.begin(), v.end(), Record{"Reg"}, rec_eq);
}
