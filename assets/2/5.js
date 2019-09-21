function fizzBuzz(start, end) {
  // Count between start and end (inclusive)
  for (i = start; i < end; i++) {
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
