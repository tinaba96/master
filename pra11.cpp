 List.8 ✏
// クラスの宣言Objectオブジェクト記述用基底クラス −
class Object
{
protected:
Vec3 color; //拡散色
public:
//コンストラクタとデストラクタ
Object(Vec3);
virtual ˜Object(){}
public:
//純粋仮想関数
virtual void Output(void);
virtual void Translate(const Vec3&) = 0;
};
// クラスの宣言Triangle三角形オブジェクト記述用クラス −
class Triangle : public Object
{
private:
Vec3 vertex[3]; //三角形頂点
Vec3 normal; //法線
public:
//コンストラクタとデストラクタ
Triangle(const Vec3&, const Vec3&, const Vec3&, const Vec3& = Vec3(0.0));
virtual ˜Triangle(){}
public:
//仮想関数
virtual void Output(void);
virtual void Translate(const Vec3&);
};
void Triangle::Translate(const Vec3 &trans)
{
vertex[0] += trans;
vertex[1] += trans;
vertex[2] += trans;
}
