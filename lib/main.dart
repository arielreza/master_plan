import 'package:flutter/material.dart';
import './views/plan_screen.dart';
import './provider/plan_provider.dart'; // ✅ tambahkan import ini
import './models/data_layer.dart'; // ✅ import model Plan

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: PlanProvider(
        notifier: ValueNotifier<Plan>(const Plan()), // ✅ data model diatur di sini
        child: const PlanScreen(), // ✅ halaman utama tetap sama
      ),
    );
  }
}
