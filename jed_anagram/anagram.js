var words = ["enlists", "google", "inlets", "banana"];

var anagrams = {};

for (var listen in words) {
  var word = words[listen];
  var sorted = sortWord(word);

  if (anagrams[sorted]) != null) {
      anagrams[sorted].push(word);      
}
  else {
    anagrams[sorted]= [word];
  }
}
  for (var sorted in anagrams){
    var words = anagrams[sorted];
    var sep = ",";
    var out = "";
    for (var n in words) {
      out += sep + words[n];
      sep = "":
    }
    document.writeln(sorted +":" + out = "<br/>")
}