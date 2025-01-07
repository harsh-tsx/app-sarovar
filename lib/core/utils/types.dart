extension NumberParsing on num {
  double percent<T extends num>(T percentageToGet) {
    return (percentageToGet / 100) * this;
  }
  // ···
}
