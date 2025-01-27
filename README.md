# Insufficient Error Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient error handling in asynchronous operations, specifically when dealing with JSON responses from an API.

The `bug.dart` file shows code that only handles errors during the HTTP request itself. If the JSON response is malformed or contains unexpected data, the `jsonDecode` function throws an exception that is not caught, causing the app to crash.

The `bugSolution.dart` file shows the improved code with comprehensive error handling to prevent such crashes.