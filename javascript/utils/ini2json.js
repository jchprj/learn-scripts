// https://stackoverflow.com/questions/26450359/javascript-library-for-convert-ini-file-to-json-file-client-side

let ini2Obj = {};
const keyValuePair = kvStr => {
    const kvPair = kvStr.split('=').map( val => val.trim() );
    return { key: kvPair[0], value: kvPair[1] };
};


textContent = `
# this is a comment line
[Master_Settings:1]
Model Name=RC-74DL
IP Address=192.168.1.39
Port=50000
`

textContent
    .split( /\n/ )                                       // split lines
    .map( line => line.replace( /^\s+|\r/g, "" ) )     // cleanup whitespace
    .forEach( line =>  {                               // convert to object
        line = line.trim();
        if ( line.startsWith('#') || line.startsWith(';') ) { return false; }
        if ( line.length ) {
            if ( /^\[/.test(line) ) {
                this.currentKey = line.replace(/\[|\]/g,'');
                ini2Obj[this.currentKey] = {};
            } else if ( this.currentKey.length ) {
                const kvPair = keyValuePair(line);
                ini2Obj[this.currentKey][kvPair.key] = kvPair.value;
            }
        } 
    }, {currentKey: ''} );

console.log(ini2Obj)