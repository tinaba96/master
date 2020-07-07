#ifndef OBJECT H
#define OBJECT H
#include "vec3.h"
class Object
{
protected:
Vec3 color; //拡散色
public:
//コンストラクタとデストラクタ
Object();
˜Object(){};
};
class Triangle : public Object
{
protected:
Vec3 vertex[3]; //三角形頂点
Vec3 normal; //法線
public:
//コンストラクタとデストラクタ
Triangle(Vec3, Vec3, Vec3);
˜Triangle(){};
//アクセスメソッド
Vec3∗ Normal(void){ return &normal; }
Vec3∗ Color(void){ return &color; }
Vec3∗ Vertex(int i)
{
if(i >= 0 && i <= 2){
return &vertex[i];
}
else{
return NULL;
}
}
};
#endif // OBJECT H
