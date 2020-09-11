import 'package:get_server/get_server.dart';

class Pageable extends WidgetBuilder {
  List<dynamic> list;
  int page;
  int size;

  Pageable(Context context, this.list, {this.page, this.size})
      : super(context, builder: (context) {
          final _page =
              int.parse(context.param('page') ?? '', onError: (_) => 1) ?? page;
          final _size =
              int.parse(context.param('size') ?? '', onError: (_) => 10) ??
                  size;
          int fistElement = (_page - 1) * _size;
          int lastElement = _page * _size;
          List<dynamic> result = list.sublist(fistElement,
              lastElement > list.length ? list.length : lastElement);
          _Pageable pageable = _Pageable(
              content: result,
              currentPage: _page,
              size: _size,
              totalElements: list.length,
              totalPages: (list.length / _size).ceil());
          return context.sendJson(pageable);
        });
}

class _Pageable {
  List<dynamic> content;
  int size;
  int totalElements;
  int totalPages;
  int currentPage;

  _Pageable(
      {this.content,
      this.size,
      this.totalElements,
      this.totalPages,
      this.currentPage});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.content != null) {
      if (this.content is List<String> ||
          this.content is List<num> ||
          this.content is List<bool> ||
          this.content is List<DateTime>) {
        data['content'] = this.content;
      } else {
        data['content'] = this.content.map((v) => v.toJson()).toList();
      }
    }
    data['size'] = this.size;
    data['totalElements'] = this.totalElements;
    data['totalPages'] = this.totalPages;
    data['currentPage'] = this.currentPage;
    return data;
  }
}
