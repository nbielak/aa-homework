const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stout
});

function teaAndBiscuits () {
  reader.question('Would you link some tea?', function (res1) {
    console.log(`You replied ${res1}`);
    reader.question('Would you like some biscuits', function (res2){
      console.log(`You replied ${res2}`)
      const tea = (res1 === 'yes') ? 'do' : 'don\'t';
      const biscuits = (res2 === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${tea} want tea and you ${buscuits} want biscuits.`);
      reader.close();

    });
  });
}
