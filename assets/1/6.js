function sum(first, second) {
  // Add two numbers
  sum = 0;
  numbers = [first, second];
  for (i = 0; i < numbers.length; i++) {
    sum = sum + numbers[i];
  }

  return sum;
}
