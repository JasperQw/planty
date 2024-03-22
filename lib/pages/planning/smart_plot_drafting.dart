import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';

class smart_plot_drafting extends StatefulWidget {
  const smart_plot_drafting({super.key});

  @override
  State<smart_plot_drafting> createState() => _smart_plot_draftingState();
}

class _smart_plot_draftingState extends State<smart_plot_drafting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: AppBarWithShadow(
          title: "SmartPlot Planner",
          withBackBtn: true,
        ),
      ),
      body: const Placeholder(),
    );
  }
}
