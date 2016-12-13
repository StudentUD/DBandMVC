package launcher;

import controller.MainController;


public class ElferreteroLauncher {
	public static void main(String[] args) {

		MainController controller = new MainController();
		controller.getView().getvLogin().setVisible(true);
	}

}
