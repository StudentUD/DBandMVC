package view;

public class MainView {

	private Login vLogin = null;
	private OptionMenu vOptionMenu = null;
	private OrdenFrame vOrdenFrame = null;
	private Provider vProvider = null;
	
	public MainView(){
		
		
		vLogin = new Login();
		vOptionMenu = new OptionMenu();
		
			
		
		
	}


	
	
	public OptionMenu getvOptionMenu() {
		return vOptionMenu;
	}

	public void setvOptionMenu(OptionMenu vOptionMenu) {
		this.vOptionMenu = vOptionMenu;
	}

	public OrdenFrame getvOrdenFrame() {
		return vOrdenFrame;
	}

	public void setvOrdenFrame(OrdenFrame vOrdenFrame) {
		this.vOrdenFrame = vOrdenFrame;
	}

	public Provider getvProvider() {
		return vProvider;
	}

	public void setvProvider(Provider vProvider) {
		this.vProvider = vProvider;
	}


	public Login getvLogin() {
		return vLogin;
	}

	public void setvLogin(Login vLogin) {
		this.vLogin = vLogin;
	}

}
