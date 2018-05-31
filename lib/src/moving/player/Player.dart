import 'package:untitled/src/moveable/moving.dart';

class Player extends Moveable {

  int _picker;


  Player.fromMap(Map data) {
    if (data.containsKey('attributes')) {
      if (data['attributes'].containsKey('picker'))
        _picker = data['attributes']['picker'];
    }
  }
  _die() {
    this._alive = false;
    print("$name died!");
  }

  // TODO monsters must give xp less than two full lvl!

  //PickUp method
  void usePotion(int type) {
    if (pots[type] >= 1) {
      var potionHealth =
      (maxHealth * (potions[type].value / 100)).round().floor();

      if ((currHealth + potionHealth) > maxHealth) {
        currHealth = maxHealth;
      } else {
        currHealth += potionHealth;
      }
      pots[type]--;
    }
  }
    return value;
}

  /* === MODS === */

  get mantel {
    return _getPicker('mantle');
  }

  get seitenschneider{
    return _getschneider('schneider');
  }

  get constitutionMod {
    return _getMod('const');
  }


  /* === ATTRIBUTES === */
  get picker => _picker;
}