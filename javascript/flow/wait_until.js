// https://stackoverflow.com/questions/22125865/wait-until-flag-true

var flag = false
function checkFlag() {
    flag = Math.random() > 0.5
    console.log(`flag=${flag}`)
    if(flag === false) {
        setTimeout(checkFlag, 1000) /* this checks the flag every 100 milliseconds*/
    } else {
        console.log("done")
    }
}
checkFlag();