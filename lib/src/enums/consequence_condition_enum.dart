enum ConseuquenceCondition {
  diversion;

  static ConseuquenceCondition? fromString(String? condition) {
    switch (condition) {
      case 'diversion':
        return ConseuquenceCondition.diversion;
      default:
        return null;
    }
  }
}
