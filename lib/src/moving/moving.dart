abstract class Moveable{
  int _lvl;
  int _speed;
  Map<String, int> _enemie = new Map();
  bool _alive = true;

  die(bool colision) {
    if (colision = true) {
     _alive = false;
    } else {
      _alive = true;
    }
  }


  _die();

  move(int x, int y) {
    print("Not implemented yet!");
  }

  get level => this._lvl;

  set level(int lvl) => this._lvl = lvl;

  get isAlive => this._alive;

  set isAlive(bool alive) => this._alive = alive;

  get picker => _picker;

  get speed => this._speed;

  set speed(int speed) => this._speed = speed;

}