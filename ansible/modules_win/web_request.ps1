# https://gist.github.com/jmassardo/2e0dd7cce292f16ff8f6945b8b3752b5
# https://stackoverflow.com/questions/40702328/display-all-content-with-invoke-webrequest
param ($URL)
add-type @"
    using System.Net;
    using System.Security.Cryptography.X509Certificates;
    public class TrustAllCertsPolicy : ICertificatePolicy {
        public bool CheckValidationResult(
            ServicePoint srvPoint, X509Certificate certificate,
            WebRequest request, int certificateProblem) {
            return true;
        }
    }
"@
[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Ssl3, [Net.SecurityProtocolType]::Tls, [Net.SecurityProtocolType]::Tls11, [Net.SecurityProtocolType]::Tls12
$result = Invoke-WebRequest -UseBasicParsing -Uri $URL | Select-Object -Expand Content
$result