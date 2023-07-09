#include <iostream>
using namespace std;
typedef struct Vec3
{
float x, y, z;
} Vec3;
int main(void)
{
Vec3 v;
v.x = 1;
v.y = 2;
v.z = 3;
cout << "v = (" << v.x << ", ";
cout << v.y << ", ";
cout << v.z << ")" << endl;
return 0;
}
