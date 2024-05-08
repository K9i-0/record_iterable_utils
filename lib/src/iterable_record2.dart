extension IterableRecord2<T1, T2> on Iterable<(T1, T2)> {
  Iterable<T> mapRecord<T>(T Function(T1 t1, T2 t2) toElement) =>
      map((e) => toElement(e.$1, e.$2));

  Iterable<(T1, T2)> whereRecord(bool Function(T1 t1, T2 t2) toElement) =>
      where((e) => toElement(e.$1, e.$2));
}
