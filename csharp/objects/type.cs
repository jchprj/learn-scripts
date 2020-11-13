// https://docs.microsoft.com/en-us/dotnet/api/system.convert.changetype?view=net-5.0
Double d = -2.345;
int i = (int)Convert.ChangeType(d, typeof(int));
Console.WriteLine(i);