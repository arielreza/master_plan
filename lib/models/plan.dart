import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;
  
  const Plan({this.name = '', this.tasks = const []});

  // 🆕 Langkah 3: Tambahkan dua getter di bawah ini

  // Menghitung jumlah task yang sudah complete
  int get completedCount => tasks.where((task) => task.complete).length;

  // Menampilkan pesan progres dalam bentuk teks
  String get completenessMessage =>
      '$completedCount out of ${tasks.length} tasks';
}
