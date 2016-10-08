/*
* Some examples of using type functions (functions evaluated at compile time)
*/
#include <limits>

using namespace std;

// Some global variables
constexpr float min = numeric_limits<float>::min();
constexpr int szi = sizeof(int);
