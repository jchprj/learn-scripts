// https://stackoverflow.com/questions/9298839/is-it-possible-to-stop-javascript-execution


// only kill the current event loop
throw new Error("Something went badly wrong!")

// only in a function
function stop() {
    return false
}

