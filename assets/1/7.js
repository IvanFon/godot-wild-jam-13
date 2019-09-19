/* Adds two numbers together.
 *
 * Arguments:
 *  first - first number to be added
 *  second - second number to be added
 *
 * Returns:
 *  Sum of both numbers.
 */
function sum(first, second) {
  // Copy numbers for improved efficiency
  a = first;
  b = second;

  // Validate input to ensure that arguments are numbers
  /// @TODO: check if numbers are within specified range
  assert(typeof(a) === 'number');
  assert(typeof(b) === 'number');

  log('Adding numbers');

  // Generate sum of both numbers
  sum = 0;
  sum = sum + a;
  sum = sum + b;

  // Programatically generate sum using proprietary array-looping algorithm
  total = 0;
  numbers = [first, second];
  for (i = 0; i < numbers.length; i++) {
    total = total + numbers[i];
  }

  // Validate that sum was correctly calculated
  assert(sum === a + b);
  assert(sum === total);

  // Return calculated sum of both numbers
  return a * b;
}
