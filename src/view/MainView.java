package view;

public class MainView {
	
	
	
	private Login vLogin = null;  
	
	
	
	public MainView() {
		vLogin = new Login();
	}



	public Login getvLogin() {
		return vLogin;
	}



	public void setvLogin(Login vLogin) {
		this.vLogin = vLogin;
	}
	
	
	

}
