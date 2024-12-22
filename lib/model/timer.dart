class Timer {
  final String id;
  DateTime? startTime;
  DateTime? endTime;
  Timer({
    required this.id,
  });
  void start() {
    startTime = DateTime.now();
    print('Timer started at: $startTime');
  }

  void stop() {
    if (startTime == null) {
      print('Timer has not started yet.');
      return;
    }
    endTime = DateTime.now();
    print('Timer Stopped at: $endTime');
  }

  Duration getDuration() {
    if (startTime == null || endTime == null) {
      throw Exception('Timer hasn not been started or stopped yet.');
    }
    return endTime!.difference(startTime!);
  }

  bool isRunning() {
    return startTime != null && endTime == null;
  }
}
