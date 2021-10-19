import 'package:flutter/material.dart';

class Pointer extends StatefulWidget {
  const Pointer({Key? key, required this.index, required this.length})
      : super(key: key);

  final int index;
  final int length;

  @override
  State<Pointer> createState() => _PointerState();
}

class _PointerState extends State<Pointer> {
  get i => null;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < widget.length; i++)
            Container(
              margin: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  color: widget.index == i ? Colors.blueAccent : null,
                  padding: EdgeInsets.all(widget.index == i ? 10 : 8),
                  decoration: widget.index != i
                      ? BoxDecoration(
                          border: Border.all(
                              color: const Color(0XFF256075).withOpacity(0.2),
                              width: 2),
                          borderRadius: BorderRadius.circular(100),
                        )
                      : null,
                ),
              ),
            ),
        ],
      ),
    );
    /*if (widget.index == widget.length - 1)
          Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: Text('TextButton'),
              ))
        else
          const SizedBox.shrink()
      ],
    );*/
  }
}
