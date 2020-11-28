// System.Collections.Generic
var map = new Dictionary<string, string>();
map.Add("a", "b");

Console.WriteLine(map);
Console.WriteLine(map["a"]);
Console.WriteLine(map.ContainsKey("ab"));

foreach (var item in map)
{
    Console.WriteLine(item.Key);
    Console.WriteLine(item.Value);
}

Console.WriteLine("-------------");

var list = new string[]{"c", "d"};
Console.WriteLine(list[0]);
foreach (var s in list)
{
    if(map.ContainsKey(s) == false)
    {
        map.Add(s, "");
    }
    Console.WriteLine(s);
}

foreach (var item in map)
{
    Console.WriteLine(item.Key);
    Console.WriteLine(item.Value);
}