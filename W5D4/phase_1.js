// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// in block
// in block
//
// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// in block
// out of block

// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// compile time error?

// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// in block
// out of block

// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }
// duplicate declaration


function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`;
}

console.log(madLib('make', 'best', 'guac'));

function fizzBuzz(array) {
  let newArray = [];
  for (var i = 0; i < array.length; i++) {
    let ele = array[i];
    if (ele % 5 === 0 && ele % 3 === 0) {
      continue;
    } else if (ele % 5 === 0 || ele % 3 === 0) {
      newArray.push(ele);
    }
  }
  return newArray;
}

function isPrime(num) {
  if (num === 1) { return false; }
  if (num === 2 || num === 3) { return true; }

  for (let l = 2; l <= Math.sqrt(num); l++) {
    if (num % l === 0) {
      return false;
    }
  }

  return true;
}

[1,2,3,4,5,6,7,9].forEach( e => console.log(`${e} ${isPrime(e)}`) )

function sumOfNPrimes() {

}
