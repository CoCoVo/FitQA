import 'package:fitqa/src/common/string_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('getUrlParameters', () {
    test("empty string returns empty map", () {
      expect(StringUtils.getUrlParameters(""), {});
    });

    test("only url returns empty map", () {
      expect(StringUtils.getUrlParameters("http://naver.com"), {});
    });

    test("one url parameter", () {
      expect(StringUtils.getUrlParameters("http://url?a=123")['a'], '123');
    });

    test("multiple url parameters", () {
      final params = StringUtils.getUrlParameters("https://url?a=gv&bc=23");

      expect(params.entries.length, 2);
      expect(params["a"], "gv");
      expect(params["bc"], "23");
    });

    test("empty parameter value", () {
      final params = StringUtils.getUrlParameters("http://url?a=");

      expect(params.entries.length, 1);
      expect(params["a"], "");
    });
  });
}
