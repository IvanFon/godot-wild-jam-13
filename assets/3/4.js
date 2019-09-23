function vowelCount(word) {
  vowels = ['a', 'e', 'i', 'o', 'u', 'y'];
  count = 0;
  for (letter in word.toLowerCase()) {
    // Check if letter is in vowels array
    if (vowels.includes(letter)) {
      count = count + 1;
    }
  }

  return count;
}
