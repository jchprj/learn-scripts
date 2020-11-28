// https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/file-system/how-to-read-from-a-text-file

string text = System.IO.File.ReadAllText(@"file");
System.Console.WriteLine("Contents = {0}", text);

string[] lines = System.IO.File.ReadAllLines(@"file");
// Display the file contents by using a foreach loop.
System.Console.WriteLine("Contents = ");
foreach (string line in lines)
{
    // Use a tab to indent each line of the file.
    Console.WriteLine("\t" + line);
}