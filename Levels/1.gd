const DATA = {
	'problem': """From: Dave Davidson <dave@megacorp.industries>
To: You
---

This function prints numbers from 1 to 100, or in a given range. For each number, it should:

- if the number is a multiple of 3, print 'Fizz'
- if the number is a multiple of 5, print 'Buzz'
- if the number is a multiple of 3 and 5, print 'FizzBuzz'
- otherwise, just print the number

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
	'orig': """function fizzBuzz() {
  for (i = 1; i <= 100; i++) {
    if (i % 3 == 0 and i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }
  }
}
""",
	'time': 90,
	'diffs': [
		{
			'correct': true,
			'id': '3ab27a0',
			'code': """function fizzBuzz(range) {
  for (i = 1; i <= range; i++) {
    if (i % 3 == 0 and i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }
  }
}
""",
			'diff': """diff --git a/1.js b/2.js
index 868d2f9..3ab27a0 100644
--- a/1.js
+++ b/2.js
@@ -1,5 +1,5 @@
-function fizzBuzz() {
-  for (i = 1; i <= 100; i++) {
+function fizzBuzz(range) {
+  for (i = 1; i <= range; i++) {
     if (i % 3 == 0 and i % 5 == 0) {
       print('FizzBuzz');
     } else if (i % 3 == 0) {
""",
		},
		{
			'correct': false,
			'id': 'c370742',
			'code': """function fizzBuzz(range) {
  for (i = 1; i <= range; i++) {
    output = '';
    if (i % 3 == 0) {
      output = 'Fizz';
    }
    if (i % 5 == 0) {
      output = 'Buzz';
    } 

    if (output == '') {
      print(i);
    } else {
      print(output);
    }
  }
}
""",
			'diff': """diff --git a/2.js b/3.js
index 3ab27a0..c370742 100644
--- a/2.js
+++ b/3.js
@@ -1,13 +1,17 @@
 function fizzBuzz(range) {
   for (i = 1; i <= range; i++) {
-    if (i % 3 == 0 and i % 5 == 0) {
-      print('FizzBuzz');
-    } else if (i % 3 == 0) {
-      print('Fizz');
-    } else if (i % 5 == 0) {
-      print('Buzz');
-    } else {
+    output = '';
+    if (i % 3 == 0) {
+      output = 'Fizz';
+    }
+    if (i % 5 == 0) {
+      output = 'Buzz';
+    } 
+
+    if (output == '') {
       print(i);
+    } else {
+      print(output);
     }
   }
 }
""",
		},
		{
			'correct': true,
			'id': 'e8754ef',
			'code': """function fizzBuzz(range) {
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
""",
			'diff': """diff --git a/2.js b/4.js
index 3ab27a0..e8754ef 100644
--- a/2.js
+++ b/4.js
@@ -1,13 +1,17 @@
 function fizzBuzz(range) {
   for (i = 1; i <= range; i++) {
-    if (i % 3 == 0 and i % 5 == 0) {
-      print('FizzBuzz');
-    } else if (i % 3 == 0) {
-      print('Fizz');
-    } else if (i % 5 == 0) {
-      print('Buzz');
-    } else {
+    output = '';
+    if (i % 3 == 0) {
+      output = output + 'Fizz';
+    }
+    if (i % 5 == 0) {
+      output = output + 'Buzz';
+    }
+
+    if (output == '') {
       print(i);
+    } else {
+      print(output);
     }
   }
 }
""",
		},
		{
			'correct': false,
			'id': '3397095',
			'code': """function fizzBuzz(start, end) {
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
""",
			'diff': """diff --git a/4.js b/5.js
index e8754ef..3397095 100644
--- a/4.js
+++ b/5.js
@@ -1,5 +1,6 @@
-function fizzBuzz(range) {
-  for (i = 1; i <= range; i++) {
+function fizzBuzz(start, end) {
+  // Count between start and end (inclusive)
+  for (i = start; i < end; i++) {
     output = '';
     if (i % 3 == 0) {
       output = output + 'Fizz';
""",
		},
		{
			'correct': true,
			'id': 'd270601',
			'code': """function fizzBuzz(start, end) {
  // Count between start and end (inclusive)
  for (i = start; i <= end; i++) {
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
""",
			'diff': """diff --git a/4.js b/6.js
index e8754ef..d270601 100644
--- a/4.js
+++ b/6.js
@@ -1,5 +1,6 @@
-function fizzBuzz(range) {
-  for (i = 1; i <= range; i++) {
+function fizzBuzz(start, end) {
+  // Count between start and end (inclusive)
+  for (i = start; i <= end; i++) {
     output = '';
     if (i % 3 == 0) {
       output = output + 'Fizz';
""",
		},
		
	],
}