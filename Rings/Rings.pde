Styles styles;
World world;
Player player;

void setup() {
  styles = new Styles();
  world = new World();
  player = new Player();
  input = new InputHandler(world, player);
  //pixelDensity(2);
  fullScreen();
  smooth(4);
  world.add(player);
}

void draw() {
  world.draw();
}
