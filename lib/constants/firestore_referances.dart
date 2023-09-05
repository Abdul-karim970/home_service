import 'instances.dart';

const String myAppCol = 'MyAppCol';
const String providedServiceDoc = 'ProvidedServiceDoc';
const String providedServiceCol = 'ProvidedServiceCol';

// Common references
var providedServiceColRef = fireStoreInstance
    .collection(myAppCol)
    .doc(providedServiceDoc)
    .collection(providedServiceCol);
