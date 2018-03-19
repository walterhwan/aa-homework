const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits() {
  // let first, second;

  reader.question('Would you like some tea?', function (res1) {
    // first = res;
    console.log(`You replied ${res1}.`);

    reader.question('Would you like some biscuits?', function (res2) {
      console.log(`You replied ${res2}.`);
      const firstRes = (res1 === 'yes') ? 'do' : 'don\'t';
      const secondRes = (res2 === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);

      reader.close();
    });
  });

}

teaAndBiscuits();
