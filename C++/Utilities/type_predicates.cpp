/*
* Some examples of using type predicates
*/
#include <type_traits>
#include <string>

using namespace std;

/*
* Main function for playing with type predicates
*/
int main(){
  bool b1 = is_arithmetic<int>();
  bool b2 = is_arithmetic<string>();
}

/*
* Example complex class to test on
*/
template<typename Scalar>
class complex{
  Scalar re, im;
public:
  static_assert(is_arithmetic<Scalar>(), "Sorry I only support complex arithmetic types");
};
