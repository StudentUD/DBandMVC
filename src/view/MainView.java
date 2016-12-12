package view;

public class MainView {

	private Login vLogin = null;
	private OptionMenu vOptionMenu = null;
	private OrdenFrame vOrdenFrame = null;
	private Provider vProvider = null;
	private SelectItems vSelectItems= null; 

	public MainView() {

		vLogin = new Login();
		vOptionMenu = new OptionMenu();
		vProvider = new Provider();
		vOrdenFrame = new OrdenFrame();
		vSelectItems = new SelectItems(); 

	}

	public SelectItems getvSelectItems() {
		return vSelectItems;
	}

	public void setvSelectItems(SelectItems vSelectItems) {
		this.vSelectItems = vSelectItems;
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
