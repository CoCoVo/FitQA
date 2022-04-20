class StringUtils {
  static Map<String, String> getUrlParameters(String url) {
    if (url.isEmpty) return {};

    if (!url.contains("?")) return {};

    Map<String, String> res = {};

    final params = url.split("?")[1];
    params.split("&").forEach((param) {
      final key = param.split("=")[0];
      final val = param.split("=")[1];
      res[key] = val;
    });

    return res;
  }
}
