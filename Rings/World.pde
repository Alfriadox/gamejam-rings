import java.util.ArrayList;
import java.util.List;
import java.util.LinkedList;

class World {
  public static final int WIDTH = 10000, HEIGHT = 10000;
  private int vcx = WIDTH/2, vcy = HEIGHT/2;
  private List<Ship> entities = new LinkedList<Ship>();
  
  public int lvp() {return vcx - width/2;}
  public int rvp() {return vcx + width/2;}
  public int tvp() {return vcy - height/2;}
  public int bvp() {return vcy + height/2;}
  
  public boolean v_contains(Ship s) {
    if (s.get_x() + s.get_size()/2 < lvp()) return false;
    if (s.get_x() - s.get_size()/2 > rvp()) return false;
    if (s.get_y() + s.get_size()/2 < tvp()) return false;
    if (s.get_y() - s.get_size()/2 > bvp()) return false;
    return true;
  }
  
  public void draw() {
    background(styles.grey);
    for (Ship s: entities) {
      if (v_contains(s)) s.draw(s.get_x()-lvp(), s.get_y()-tvp());
    }
  }
  
  public void add(Ship s) {this.entities.add(s);}
}
