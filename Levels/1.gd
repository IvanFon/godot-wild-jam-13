const DATA = {
	'problem': """From: Dave Davidson <dave@megacorp.industries>
To: You
---

This function needs to take two numbers and return their sum. The current code""" +\
""" is displayed above this email.

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
	'orig': """function sum(a, b) {
  return a + b;
}""",
	'time': 60,
	'diffs': [
		{
			'correct': true,
			'code': """function sum(a, b) {
  // Add two numbers
  return a + b;
}
""",
			'diff': """diff --git a/1.js b/2.js
index d81e0a1..00d15b5 100644
--- a/1.js
+++ b/2.js
@@ -1,3 +1,4 @@
 function sum(a, b) {
+  // Add two numbers
   return a + b;
 }
""",
		},
		{
			'correct': false,
			'code': """function sum(a, b) {
  // Add two numbers
  return a - b;
}
""",
			'diff': """diff --git a/2.js b/3.js
index 00d15b5..ac2aa78 100644
--- a/2.js
+++ b/3.js
@@ -1,4 +1,4 @@
 function sum(a, b) {
   // Add two numbers
-  return a + b;
+  return a - b;
 }
""",
		},
		{
			'correct': true,
			'code': """function sum(first, second) {
  // Add two numbers
  sum = first + second;
  return sum;
}
""",
			'diff': """diff --git a/2.js b/4.js
index 00d15b5..0abbdbd 100644
--- a/2.js
+++ b/4.js
@@ -1,4 +1,5 @@
-function sum(a, b) {
+function sum(first, second) {
   // Add two numbers
-  return a + b;
+  sum = first + second;
+  return sum;
 }
""",
		},
		{
			'correct': false,
			'code': """function sum(a, b) {
  // Add two numbers
  first = a;
  second = a;
  sum = first + second;
  return sum;
}
""",
			'diff': """diff --git a/4.js b/5.js
index 0abbdbd..8ac60e9 100644
--- a/4.js
+++ b/5.js
@@ -1,5 +1,7 @@
-function sum(first, second) {
+function sum(a, b) {
   // Add two numbers
+  first = a;
+  second = a;
   sum = first + second;
   return sum;
 }
""",
		},
		{
			'correct': true,
			'code': """function sum(first, second) {
  // Add two numbers
  sum = 0;
  numbers = [first, second];
  for (i = 0; i < numbers.length; i++) {
    sum = sum + numbers[i];
  }

  return sum;
}
""",
			'diff': """diff --git a/4.js b/6.js
index 0abbdbd..b866d57 100644
--- a/4.js
+++ b/6.js
@@ -1,5 +1,10 @@
 function sum(first, second) {
   // Add two numbers
-  sum = first + second;
+  sum = 0;
+  numbers = [first, second];
+  for (i = 0; i < numbers.length; i++) {
+    sum = sum + numbers[i];
+  }
+
   return sum;
 }
""",
		},
		{
			'correct': false,
			'code': """/* Adds two numbers together.
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
""",
			'diff': """diff --git a/6.js b/7.js
index b866d57..1f00693 100644
--- a/6.js
+++ b/7.js
@@ -1,10 +1,40 @@
+/* Adds two numbers together.
+ *
+ * Arguments:
+ *  first - first number to be added
+ *  second - second number to be added
+ *
+ * Returns:
+ *  Sum of both numbers.
+ */
 function sum(first, second) {
-  // Add two numbers
+  // Copy numbers for improved efficiency
+  a = first;
+  b = second;
+
+  // Validate input to ensure that arguments are numbers
+  /// @TODO: check if numbers are within specified range
+  assert(typeof(a) === 'number');
+  assert(typeof(b) === 'number');
+
+  log('Adding numbers');
+
+  // Generate sum of both numbers
   sum = 0;
+  sum = sum + a;
+  sum = sum + b;
+
+  // Programatically generate sum using proprietary array-looping algorithm
+  total = 0;
   numbers = [first, second];
   for (i = 0; i < numbers.length; i++) {
-    sum = sum + numbers[i];
+    total = total + numbers[i];
   }
 
-  return sum;
+  // Validate that sum was correctly calculated
+  assert(sum === a + b);
+  assert(sum === total);
+
+  // Return calculated sum of both numbers
+  return a * b;
 }
""",
		},
		
	],
}