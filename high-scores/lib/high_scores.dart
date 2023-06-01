class HighScores {
  List<int> scores;

  HighScores(this.scores);

  int latest() {
    if (scores.isEmpty) {
      throw StateError('No score available');
    }

    return scores.last;
  }

  int personalBest() {
    if (scores.isEmpty) {
      throw StateError('No scores available');
    }
    return scores.reduce((value, element) => value > element ? value : element);
  }

  List<int> personalTopThree() {
    if (scores.isEmpty) {
      throw StateError('No scores available');
    }
    final sortedScores = List<int>.from(scores)..sort((a, b) => b.compareTo(a));
    return sortedScores.sublist(0, 3);
  }
}
