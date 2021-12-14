// https://stackoverflow.com/questions/34446579/how-to-resolve-an-outer-async-function-from-an-inner-function
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise

function handleResolvedA(a) {
    console.log(a)
}
function handleResolvedB() {
    console.log("Hello world!B")
}
const myPromise = new Promise((resolve, reject) => {
    console.log("Promise!")
    setTimeout(() => {
      resolve('foo')
    }, 300)
  })

async function test(){

    await myPromise
    .then(handleResolvedA)
    .then(handleResolvedA, handleResolvedB)
    .then(handleResolvedA, handleResolvedB)

    console.log("Hello world!!!")
}
test()
