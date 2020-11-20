// https://medium.com/@trapdoorlabs/dynamically-invoking-c-methods-a4cd1e846676
using System.Reflection;
// var a = new MyClass();
// var type = a.GetType();
// var type = Type.GetType("MyClass");          # seems not working in script, but works in project
var type = typeof(MyClass);
var method = type.GetMethod("MyMethod");
Console.WriteLine(method.Name);
method.Invoke(a, null);

class MyClass
{
    public void MyMethod()
    {
        Console.WriteLine("from MyMethod");
    }
}