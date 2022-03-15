import 'package:fitqa/listitem/listitem_trainer.dart';
import 'package:fitqa/widget/filter_chip_bar.dart';
import 'package:flutter/material.dart';

class ListTrainer extends StatelessWidget {
  const ListTrainer({
    Key? key,
    required this.selectable,
  }) : super(key: key);

  final bool selectable;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '트레이너 목록',
                style: TextStyle(fontSize: 22),
              ),
              FilterChipBar(items: ['전체', '#하체', '#등', '#가슴', '#어깨', '#팔']),
              FilterChipBar(items: ['조회수 높은 순', '좋아요 순', '최신순', '과거순']),
            ],
          ),
        ),
        ListItemTrainer(selectable: selectable),
        ListItemTrainer(selectable: selectable),
        ListItemTrainer(selectable: selectable),
        ListItemTrainer(selectable: selectable),
        ListItemTrainer(selectable: selectable),
      ],
    );
  }
}
