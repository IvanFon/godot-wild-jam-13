const DATA = {
	'problem': """From: Dave Davidson <dave@megacorp.industries>
To: You
---

This function counts the number of vowels in a given word.

You will receive a series of pull requests. Each pull request contains proposed""" + \
' changes to the code. You will be able to merge (accept) the pull request, or' + \
""" close (deny) the pull request.

The green lines (starting with a +) are lines that are to be added.

The red lines (starting with a -) are lines that are to be removed.

Your job is to evaluate the changes in each pull request.

You must merge as many changes as you can, without breaking the code. Don't worry""" + \
""" about anything like code style or variable names, just make sure the code works.

If you merge broken code, you will be fired.

If you close a working pull request, you will be fired.

If you exceed your time limit (shown below this email), you will be fired.

Good luck,
Dave Davidson
Megacorp Industries


""",
	'orig': """function vowelCount(word) {
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
""",
	'time': 60,
	'diffs': [
		{
			'correct': false,
			'id': '5f69744',
			'code': """function vowelCount(word) {
  vowels = ['a', 'e', 'i', 'o', 'u', 'y'];
  count = 0;
  for (letter in word) {
    // Check if letter is in vowels array
    if (vowels.includes(letter)) {
      count = count + 1;
    }
  }

  return count;
}
""",
			'diff': """diff --git a/1.js b/2.js
index 62b6b0e..5f69744 100644
--- a/1.js
+++ b/2.js
@@ -1,5 +1,5 @@
 function vowelCount(word) {
-  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
+  vowels = ['a', 'e', 'i', 'o', 'u', 'y'];
   count = 0;
   for (letter in word) {
     // Check if letter is in vowels array
""",
		},
		{
			'correct': false,
			'id': 'bd7f31a',
			'code': """function vowelCount(word) {
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
""",
			'diff': """diff --git a/1.js b/3.js
index 62b6b0e..bd7f31a 100644
--- a/1.js
+++ b/3.js
@@ -1,5 +1,5 @@
 function vowelCount(word) {
-  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
+  vowels = ['A', 'E', 'I', 'O', 'U', 'Y'];
   count = 0;
   for (letter in word) {
     // Check if letter is in vowels array
""",
		},
		{
			'correct': true,
			'id': '1579d0d',
			'code': """function vowelCount(word) {
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
""",
			'diff': """diff --git a/1.js b/4.js
index 62b6b0e..1579d0d 100644
--- a/1.js
+++ b/4.js
@@ -1,7 +1,7 @@
 function vowelCount(word) {
-  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
+  vowels = ['a', 'e', 'i', 'o', 'u', 'y'];
   count = 0;
-  for (letter in word) {
+  for (letter in word.toLowerCase()) {
     // Check if letter is in vowels array
     if (vowels.includes(letter)) {
       count = count + 1;
""",
		},
	],
}