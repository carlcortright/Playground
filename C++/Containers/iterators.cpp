/*
* Some examples of using iterators
*/
#include <algorithm>
#include <string>
#include <iostream>
#include <fstream>
#include <iterator>

using namespace std;

/*
* An interesting example using input/output stream iterators
*/
int main(){
  string from, to;
  cin >> from >> to;

  ifstream is {from};
  istream_iterator<string> ii {is};
  istream_iterator<string> eos {};

  ofstream os {to};
  ostream_iterator<string> oo {os, "\n"};

  vector<string> b {ii, eos};
  sort(b.begin(), b.end());

  unique_copy(b.begin(), b.end(), oo);

  return !is.eof() || !os;
}
