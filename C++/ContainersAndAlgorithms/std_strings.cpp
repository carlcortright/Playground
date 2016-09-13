#include <string>
using namespace std;

/*
* A simple example of how to use std::string
*/
string compose(const string& name, const string& domain){
  return name + '@' + domain;
}

auto addr = compose("carl", "carlcortright.me");

void m2(string& s1, string& s2){
  s1 = s1 + "\n";
  s2 += "\n"; // Append a newline to s2
}

string name = "Carl Cortright";

void m3(){
  string first_name = name.substr(0,4);
  name.replace(0, 4, "carlos");
  name[0] = toupper(name[0]); // Make my first name uppercase
}

string incantation;

void respond(const string& answer){
  if(answer == incantation){
    // Perform magic
  } else if( answer == "yes"){
    // Do something
  }
}
