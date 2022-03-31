// https://w3collective.com/get-domain-name-url-javascript/

const url = "https://www.example.com/blog?search=hello&world";

let domain = (new URL(url));
console.log(domain);
/*
    URL {
    href: 'https://www.example.com/blog?search=hello&world',
    origin: 'https://www.example.com',
    protocol: 'https:',
    username: '',
    password: '',
    host: 'www.example.com',
    hostname: 'www.example.com',
    port: '',
    pathname: '/blog',
    search: '?search=hello&world',
    searchParams: URLSearchParams { 'search' => 'hello', 'world' => '' },
    hash: ''
    }
*/

console.log(domain.hostname);   //www.example.com

console.log(domain.pathname);   // blog

console.log(domain.protocol);   // https

console.log(domain.search);     // ?search=hello&world


// https://www.sitepoint.com/get-url-parameters-with-javascript/

const urlParams = new URLSearchParams(domain.search);

const search = urlParams.get('search')
console.log(search);
// hello

const hello = urlParams.get('hello')
console.log(hello);
// null

const world = urlParams.get('world')
console.log(world);
// empty string