#include "template_vector.h"

void bad_copy(Vector v1){
  Vector v2 {v1};
  v1[0] = 2; // Now v2[0] is 2! Bad!
}

/*
* Testing our custom template vector
*/
void test_Vector_Template(){
  Vector<char> vc(200);
  Vector<string> vs(17);
  Vector<list<int>> vli(45);
}


/*
* A function that uses tempates to sum the values in a container
*/
template<typename Container, typename Value>
Value Sum(const Container& c, Value v){
  for(auto x : c)
    v+=x;
  return v;
}
