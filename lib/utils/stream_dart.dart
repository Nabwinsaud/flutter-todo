// stream are the another aspect of async programming
// stream represent the sequence of data

// for getting the entire data or content of file we can use Future

// use stream to get the content line at a time
//

void main() async {
  // const
  // final
  // why to use these ?
  // differences and what  to use ?

  var stream =
      Stream<int>.periodic(const Duration(seconds: 1), (count) => count * 1)
          .takeWhile((event) => event < 10);
  print(stream.forEach((element) {
    print(element);
  }));
}
