import 'package:flutter/material.dart';

class RegitroX extends StatefulWidget {
  const RegitroX({super.key});

  @override
  State<RegitroX> createState() => _RegitroXState();
}

class _RegitroXState extends State<RegitroX> {
  static const int numItems = 8;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text('Tareas'),
          ),
        ],
        rows: List<DataRow>.generate(
          numItems,
          (int index) => DataRow(
            color: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.08);
              }
              if (index.isEven) {
                return Colors.blueAccent.withOpacity(0.3);
              }
              return null;
            }),
            cells: <DataCell>[DataCell(Text('Tarea $index'))],
            selected: selected[index],
            onSelectChanged: (bool? value) {
              setState(() {
                selected[index] = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
