#include "pra5.h"
//クラスの実装
Vec3::Vec3()
{
cout << "constructor" << endl;
}
Vec3::Vec3(float x0, float y0, float z0)
{
x = x0; y = y0; z = z0;
cout << "constructor2" << endl;
}
Vec3::˜Vec3()
{
cout << "destructor" << endl;
}
void Vec3::input(float x0, float y0, float z0)
{
x = x0; y = y0; z = z0;
}
void Vec3::output(void)
{
cout << "v = (" << x << ", ";
cout << y << ", ";
cout << z << ")" << endl;
}
