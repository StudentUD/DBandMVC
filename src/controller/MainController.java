package controller;

import model.MainModel;
import view.MainView;

public class MainController {

	protected MainView view = null;
	protected MainModel model = null;

	public MainController() {

		view = new MainView();
		model = new MainModel();

		addListeners();

	}

	///// Amiandiendo listeners
	private void addListeners() {
		view.getvLogin().getBtnSingIn().addActionListener(e -> onActionBtnSingInLogin());
	}

	/// actions

	public void onActionBtnSingInLogin() {
		System.out.println("work log");
		
		
		//aqui hacer autenticacion 
		if(true){
			
			view.getvLogin().setVisible(false);
			view.getvOptionMenu().setVisible(true);
			
		}
		
	}

	// getter and setter
	public MainView getView() {
		return view;
	}

	public void setView(MainView view) {
		this.view = view;
	}

	public MainModel getModel() {
		return model;
	}

	public void setModel(MainModel model) {
		this.model = model;
	}

}
