
const debug = require('debug')('http');

function beforeScenario (context, events, next) {
    console.log(`beforeScenario`);  
    return next();
}

function beforeRequest (requestParams, context, events, next) {
    console.log(`beforeRequest: ${JSON.stringify(requestParams)}`);  
    return next();
}

function afterResponse (requestParams, response, context, ee, next) {
    console.log(`afterResponse`);  
    console.log(`${response.statusCode}: ${response}`);  
    return next();
}

module.exports = {
    beforeScenario: beforeScenario,
    beforeRequest: beforeRequest,
    afterResponse: afterResponse
}