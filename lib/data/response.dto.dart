class ApiResponse{
    int id;
    String title;
    String content;
    DateTime createdAt;
    DateTime updatedAt;

    ApiResponse({
        required this.id,
        required this.title,
        required this.content,
        required this.createdAt,
        required this.updatedAt,
    });
}
