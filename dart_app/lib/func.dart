// void main() {
//   print(func());
// }

String func(String q) {
  String a = "i im func";
  print(a);
  return q;
}

void jiantoufunc(String q) => print(q);

// [  ] 可选参数

void kxfunc(String q, [String w]) => print("$q $w");
void kxfunc2(String q, [String w, String e]) => print("$q $w $e");

// 参数 命名
void mmfunc2({String q, String w, String e}) => print("$q $w $e");

// 参数 默认值
void mrfunc({String q, String w = "wwwwwwwwww", String e = "eeeeeeeeee"}) =>
    print("$q $w $e");
