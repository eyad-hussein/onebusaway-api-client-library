enum ReferenceElementType {
  agencies;

  factory ReferenceElementType.fromString(String referenceElement) {
    switch (referenceElement) {
      case 'agencies':
        return ReferenceElementType.agencies;
    }
    throw ArgumentError('Invalid reference element: $referenceElement');
  }
}
