function fizzBuzz(range) {
  for (i = 1; i <= range; i++) {
    output = '';
    if (i % 3 == 0) {
      output = output + 'Fizz';
    }
    if (i % 5 == 0) {
      output = output + 'Buzz';
    }

    if (output == '') {
      print(i);
    } else {
      print(output);
    }
  }
}
