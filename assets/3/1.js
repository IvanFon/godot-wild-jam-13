function vowelCount(word) {
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
  count = 0;
  for (letter in word) {
    // Check if letter is in vowels array
    if (vowels.includes(letter)) {
      count = count + 1;
    }
  }

  return count;
}
