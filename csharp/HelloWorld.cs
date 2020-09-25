// https://www.base64encode.net/c-sharp-system-convert-tobase64string
// https://github.com/base64encode/examples/blob/master/base64encode.cs
// https://stackoverflow.com/questions/10940883/c-converting-byte-array-to-string-and-printing-out-to-console

string base64Decoded = "Hello world!";

byte[] data = System.Text.ASCIIEncoding.ASCII.GetBytes(base64Decoded);
string base64Encoded = System.Convert.ToBase64String(data);
Console.WriteLine(base64Encoded);

byte[] binaryData;
binaryData = System.Convert.FromBase64CharArray(base64Encoded.ToCharArray(), 0, base64Encoded.Length);
Console.WriteLine(Encoding.UTF8.GetString(binaryData));