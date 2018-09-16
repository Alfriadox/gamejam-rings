abstract class Ship {
  protected int 
    rings = 0,
    x, y, vx, vy;
  protected final color c;
  
  Ship(int ax, int ay, color ac) {
    x = ax; y = ay; c = ac;
  }
  
  public void set_vx(int a) {vx=a;}
  public void set_vy(int a) {vy=a;}
  public void add_ring() {rings++;}
  public void set_rings(int a) {rings = a;}
  public int get_rings() {return rings;}
  
  public int get_x() {return x;}
  public int get_y() {return y;}
  public int get_size() {return styles.p_radius*2 + 2*rings*(styles.ring_margin + styles.ring_width);}
  
  void draw(int ax, int ay) {
    fill(c);
    noStroke();
    ellipse(ax, ay, styles.p_radius*2, styles.p_radius*2);
    colorMode(HSB, rings+1, 100, 100);
    strokeWeight(styles.ring_width);
    for (int i = 0; i < rings; i++) {
      int s = styles.p_radius*2 +(i)*2*styles.ring_margin + styles.ring_width*2; //<>//
      noFill();
      stroke(i, 100, 100);
      arc(ax, ay, s, s, 0, TAU);
    }
  }
}
