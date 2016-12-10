package launcher;

import controller.MainController;
import model.MainModel;
import view.MainView;

public class ElferreteroLauncher {
	public static void main(String[] args) {
		
		MainView view = new MainView(); 
		MainModel model = new MainModel(); 
		
		
		
		MainController controller = new MainController(model,view);
		
	}

}
