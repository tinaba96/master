#include <iostream>
using namespace std;
class Vec3
{
public:
float x, y, z;
};
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
