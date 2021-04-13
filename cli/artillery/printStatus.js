function printStatus (requestParams, response, context, ee, next) {
    console.log(`${response.statusCode}: ${JSON.stringify(response)}`);  
    return next();
}

function before (userContext, events, done) {
    console.log(`before`);  
    return done();
}

module.exports = {
    printStatus: printStatus,
    before: before
}