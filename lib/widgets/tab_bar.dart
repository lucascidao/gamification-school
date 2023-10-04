import 'package:flutter/material.dart';

class IfrjTab extends StatelessWidget {
  const IfrjTab({
    Key? key,
    required this.tabs,
    int? currentTab,
    this.onTap,
  })  : _currentTab = currentTab,
        super(key: key);

  final List<String> tabs;
  final int? _currentTab;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 165),
      child: Row(
        children: List.generate(
            tabs.length,
            (index) => Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => onTap?.call(index),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: Text(
                              tabs[index],
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: _currentTab == index
                                    ? Colors.black
                                    : const Color.fromRGBO(155, 155, 155, 1),
                                fontSize: 20,
                                fontWeight: _currentTab == index
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: _currentTab == index ? 3 : 2,
                            decoration: BoxDecoration(
                              color: _currentTab != index
                                  ? Colors.white.withOpacity(0.1)
                                  : null,
                              gradient: _currentTab == index
                                  ? const LinearGradient(
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                      colors: [
                                        Color.fromRGBO(76, 217, 100, 1),
                                        Color.fromRGBO(76, 217, 100, 1)
                                      ],
                                    )
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
