import 'Post.dart';

class Dummy {
  static final List<String> tableTitle = ['번호', '제목', '작성자', '등록일', '조회수'];
  List<Post> postList = [];
  static final List<List<String>> tableContents = [
    ['0', '제목이 있는 글', '홍길돋', '2022-01-04', '88'],
    ['1', '제목이 있는 글', '관리자', '2022-04-04', '88'],
    ['2', '제목이 있는 글', '홍길돋', '2022-05-05', '88'],
    ['3', '제목이 있는 글', '관리자2', '2022-05-07', '88'],
    ['4', '제목이 있는 글', '관리자3', '2022-05-08', '88'],
    ['5', '제목이 있는 글', '매니저', '2022-05-09', '88'],
    ['6', '제목이 있는 글', '대표', '2022-05-10', '88'],
    ['7', '제목이 있는 글', 'CEO', '2022-06-31', '88'],
    ['8', '제목이 있는 글', '운성장', '2022-07-02', '88'],
    ['9', '제목이 있는 글', 'NEV', '2022-07-14', '88'],
    ['10', '제목이 있는 글', '붕어', '2022-08-01', '88'],
    ['11', '제목이 있는 글', '바보', '2022-08-08', '88'],
    ['12', '제목이 있는 글', '멍청이', '2022-09-10', '88'],
    ['13', '제목이 있는 글', 'INVEST', '2022-09-07', '88'],
    ['14', '제목이 있는 글', 'Elon', '2022-11-08', '88'],
    ['15', '제목이 있는 글', 'CRADA', '2022-11-11', '88'],
    ['16', '제목이 있는 글', '전우치', '2022-12-25', '88'],
    ['17', '제목이 있는 글', '문', '2023-03-29', '88'],
  ];
}