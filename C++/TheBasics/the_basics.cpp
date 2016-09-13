/*
* Some basic C++ functionality.
*
* Author: Carl Cortright
*/

#include <iostream>
using namespace std;

void print_square(double d);
bool accept();

/*
* Main method to be called on program start
*/
int main(){
  print_square(1.234);
  cout << accept();
}

/*
* Square an input number x
*/
double square(double x){
  return x*x;
}

/*
* Print the square of a number
*/
void print_square(double x){
  cout << x << " ^ 2 = " << square(x);
}

bool accept(){
  cout << "Do you want to proceed? (y/n)" << endl;

  char answer = 0;
  cin >> answer;

  switch (answer) {
    case 'y':
      return true;
    case 'n':
      return false;
    default:
      cout << "I'll take that as a no.... " << endl;
      return false;
  }
}

/*
* Ask the user if they want to proceed, looping four times
*/
bool acceptWithNumberOfLoops(){
  char answer = 0;
  int loops = 0;
  while(loops < 4){
    // Ask the user if they want to proceed
    cout << "Do you want to proceed? (y/n)" << endl;
    cin >> answer;

    // Process the user's response
    switch (answer) {
      case 'y':
        return true;
      case 'n':
        return false;
      default:
        cout << "I didn't recognize that as an answer..." << endl;
    }
    ++loops;
  }
}

/*
* Copy the contents of one array to another
*/
void copy_ftc(){
  // Create the arrays
  int v1[10] = {0,1,2,3,4,5,6,7,8,9};
  int v2[10];
  // Copy the contents of one array into another
  for(int i = 0; i != 10; ++i) {
    v2[i] = v1[i];
  }
}

/*
* prints a series of random numbers
*/
void print_random_numbers(){
  // Create an array of random numbers
  int v1[] = {11,13,17,23,42,43};
  // Use a range-for-loop to print the numbers to the console
  for(int x : v1) {
    cout << x << '\n';
  }
}
