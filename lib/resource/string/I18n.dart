import 'package:get/get.dart';

class I18n extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello World',
      'title': 'Title',
      'home': 'Home',
      'study': 'Study',
      'study history': 'Study History',
      'study analysis': 'Study Analysis',
      'refresh': 'Refresh',
    },
    'ko_KR': {
      'hello': '안녕하세요',
      'title': '제목',
      'home': '홈',
      'study': '학습',
      'study history': '학습내역',
      'study analysis': '학습분석',
      'refresh': '새로고침',
    }
  };
}