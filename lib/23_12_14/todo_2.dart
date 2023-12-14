class Todo {
  final bool success;
  final int statusCode;
  final String statusMessage;

  Todo({
    required this.success,
    required this.statusCode,
    required this.statusMessage,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      success: json['success'] ?? false,
      statusCode: json['status_code'] ?? 0,
      statusMessage: json['status_message'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'status_code': statusCode,
      'status_message': statusMessage,
    };
  }
}
