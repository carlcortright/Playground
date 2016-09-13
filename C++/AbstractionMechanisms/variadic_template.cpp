/*
* An example of a variadic template. This is cool, but it could maybe be done
* better if we reduced recursive overhead.
*
* This is good for  something like n-tuples
*
* Note: ... is a ellipsis, and differenciates the rest of the list
*/
template<typename T, typename... Tail>
void f(T head, Tail... tail){
  g(head); // Do something to the head
  f(tail...); // Recursively do something to the tail.
}

void f(){} // Separate function the deals with the case when the tail is empty
void g(){}
