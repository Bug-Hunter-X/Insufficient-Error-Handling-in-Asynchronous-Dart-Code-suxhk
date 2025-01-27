```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        // Process data
      } catch (e) {
        print('JSON decoding error: $e');
        // Handle JSON parsing errors here, e.g. provide fallback data or log the error.
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle general errors, possibly displaying an error message to the user.
  }
}
```