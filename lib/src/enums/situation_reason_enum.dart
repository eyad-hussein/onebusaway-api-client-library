enum SituationReason {
  equipmentReason,
  environmentReason,
  personnelReason,
  miscellaneousReason,
  securityAlert;

  factory SituationReason.fromString(String reason) {
    switch (reason) {
      case 'equipmentReason':
        return SituationReason.equipmentReason;
      case 'environmentReason':
        return SituationReason.environmentReason;
      case 'personnelReason':
        return SituationReason.personnelReason;
      case 'miscellaneousReason':
        return SituationReason.miscellaneousReason;
      case 'securityAlert':
        return SituationReason.securityAlert;
    }
    throw ArgumentError('Invalid reason: $reason');
  }
}
