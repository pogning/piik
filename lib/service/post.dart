import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:undefined/model/toggle.dart';

final postProvider =
    StateNotifierProvider<PostNotifier, List<PostToggle>>((ref) {
  return PostNotifier(ref);
});

class PostNotifier extends StateNotifier<List<PostToggle>> {
  Ref ref;
  PostNotifier(this.ref)
      : super(
          [
            PostToggle("seoul travel", false),
            PostToggle("fishing", false),
            PostToggle("맛집", false),
            PostToggle("관광", false),
            PostToggle("별관찰", false),
            PostToggle("풀", false),
            PostToggle("카페", false),
          ],
        );

  toggleHasPick(String post, bool active) {
    state = state.map((e) {
      if (e.post == post) {
        return e.copyWith(active);
      } else {
        return e.copyWith(false);
      }
    }).toList();
  }

  String? getter() {
    final selectedToggle =
        state.firstWhere((e) => e.active, orElse: () => PostToggle("", false));
    if (selectedToggle.post != "") {
      return selectedToggle.post;
    } else {
      return null;
    }
  }

  String currentPick() {
    return state.where((e) => e.active).map((e) => e.post).toString();
  }

  cleanToggleCategory() {
    state = state.map((e) => e.copyWith(false)).toList();
  }
}
