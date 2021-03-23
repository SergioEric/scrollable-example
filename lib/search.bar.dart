import 'package:flutter/material.dart';

const black = Color(0xff131313);

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brightness = Theme.of(context).brightness;
    // TODO refactor after created darkmode
    final iconColor = brightness == Brightness.light ? black : Colors.white;
    final isLight = brightness == Brightness.light;
    return GestureDetector(
      onTap: () {
        //  widget.searchFieldFocus.requestFocus()
      },
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: isLight ? Colors.white : const Color(0xff131313),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              // blurRadius: 30,
              color: isLight
                  ? Colors.black.withOpacity(0.03)
                  : const Color(0xff212121),
              offset: const Offset(0, -2),
              // offset: const Offset(0, -2),
            ),
            BoxShadow(
              blurRadius: 5,
              // blurRadius: 50,
              color: isLight
                  ? Colors.black.withOpacity(0.06)
                  : const Color(0xff212121),
              // offset: const Offset(0, 0),
              // offset: const Offset(0, 32),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        // padding: EdgeInsets.only(left: 15),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  height: 52,
                  margin: const EdgeInsets.only(right: 15),
                  child: IconButton(
                    // splashColor: Sagu.primary[200],
                    onPressed: () {
                      // FocusScope.of(context).requestFocus(_searchFieldFocus);
                      // widget.searchFieldFocus.requestFocus();
                    },
                    icon: Icon(
                      Icons.search,
                      // color: primary.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextFormField(
                // focusNode: widget.searchFieldFocus,
                // cursorColor: primary,
                textInputAction: TextInputAction.search,
                // onEditingComplete: () => print("search"),
                decoration: const InputDecoration.collapsed(
                  hintText: "Buscar..",
                ),

                onChanged: (value) {
                  //if(value.trim() == '') return;
                },
              ),
            ),
            // if (_searchFieldHasFocus) ...[
            //   ClipRRect(
            //     borderRadius: BorderRadius.circular(30),
            //     child: Material(
            //       color: Colors.transparent,
            //       child: IconButton(
            //         splashColor: drop_color_2_3,
            //         icon: const Icon(
            //           MyIcons.close,
            //           size: 16,
            //         ),
            //         onPressed: () {
            //           _searchFieldCtrl.clear();
            //           //context.read<SearchProductBloc>().add()
            //         },
            //       ),
            //     ),
            //   )
            // ] else ...[
            //   const SizedBox(),
            // ],
            // const FilterButton(),
          ],
        ),
      ),
    );
  }
}
