// window.setTimeout(function () {
//   alert('HAMMERTIME');
// }, 5000);


// function hammerTime(time) {
//   window.setTimeout(function () {
//     alert(`${time} is HAMMER TIME`);
//   });
// }

// const readline = require('readline');

function box() {
  let val = undefined;
  return {
    set: function(newVal) { val = newVal; },
    get: function() { return val; },
    type: function() { return typeof val; }
  };
}

var b = box();

console.log(b.type()); // "undefined"
console.log(b.set(98.6));
console.log(b.get()); // 98.6
console.log(b.type());  // "number"


function type(obj){
  return Object.prototype.toString.call(obj);//.slice(8, -1);
}
function Cat(name) {
  this.name = name;
}

let cat = new Cat('mason');
var myArray = [1,2,3];
console.log(myArray.constructor === Array); // true
console.log(cat.constructor === Cat); // true
