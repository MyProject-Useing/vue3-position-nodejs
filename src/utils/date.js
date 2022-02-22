function getBeforeMonth(d) {
  d = new Date(d);
  d = +d - 1000 * 60 * 60 * 24 * 29;
  d = new Date(d);
  var year = d.getFullYear();
  var mon = d.getMonth() + 1;
  var day = d.getDate();
  s =
    year +
    "-" +
    (mon < 10 ? "0" + mon : mon) +
    "-" +
    (day < 10 ? "0" + day : day);
  return s;
}
