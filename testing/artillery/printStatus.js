function printStatus (requestParams, response, context, ee, next) {
    console.log(`${response.statusCode}: ${JSON.stringify(response)}`);  
    return next();
}

module.exports = {
    printStatus: printStatus
}