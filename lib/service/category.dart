import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:undefined/model/toggle.dart';

final typeProvider =
    StateNotifierProvider<TypeNotifier, List<TypeToggle>>((ref) {
  return TypeNotifier(ref);
});

class TypeNotifier extends StateNotifier<List<TypeToggle>> {
  Ref ref;
  TypeNotifier(this.ref)
      : super(
          [
            TypeToggle("seoul travel", false),
            TypeToggle("fishing", false),
            TypeToggle("muk-bang", false),
            TypeToggle("k-pop", false),
            TypeToggle("astronomy", false),
            TypeToggle("kite-surfing", false),
            TypeToggle("cafe", false),
          ],
        );

  toggleHasPick(String category, bool active) {
    state = state.map((e) {
      if (e.category == category) {
        return e.copyWith(active);
      } else {
        return e.copyWith(false);
      }
    }).toList();
  }

  String? getter() {
    final selectedToggle =
        state.firstWhere((e) => e.active, orElse: () => TypeToggle("", false));
    if (selectedToggle.category != "") {
      return selectedToggle.category;
    } else {
      return null;
    }
  }

  String currentPick() {
    return state.where((e) => e.active).map((e) => e.category).toString();
  }

  cleanToggleCategory() {
    state = state.map((e) => e.copyWith(false)).toList();
  }
}
