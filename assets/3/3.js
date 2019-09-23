function vowelCount(word) {
  vowels = ['A', 'E', 'I', 'O', 'U', 'Y'];
  count = 0;
  for (letter in word) {
    // Check if letter is in vowels array
    if (vowels.includes(letter)) {
      count = count + 1;
    }
  }

  return count;
}
