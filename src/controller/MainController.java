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

	///// Aniandiendo listeners
	private void addListeners() {
		
		//ventana de logueo
		view.getvLogin().getBtnSingIn().addActionListener((e)-> onActionBtnSingInLogin());
		
		//ventana de opciones
		view.getvOptionMenu().getBtnAddProvedor().addActionListener((e)-> onActionBtnAddProvider());
		view.getvOptionMenu().getBtnSearchOrden().addActionListener((e)-> onActionBtnSearchOrder());
		view.getvOptionMenu().getBtnNewOrden().addActionListener((e)-> onActionBtnNewOrder());
		
	}

	private Object onActionBtnSearchOrder() {
		// TODO Auto-generated method stub
		return null;
	}

	private Object onActionBtnNewOrder() {
		// TODO Auto-generated method stub
		return null;
	}

	private void  onActionBtnAddProvider() {
		view.getvOptionMenu().setVisible(false);
		view.getvProvider().setVisible(true);
	}

	/** acciones llamandadas en los lambda de cada listener **/

	public void onActionBtnSingInLogin() {
		System.out.println("work log");
		
		
		//aqui hacer autenticacion 
		if(true){
			
			view.getvLogin().setVisible(false);
			view.getvOptionMenu().setVisible(true);
			
		}
		
	}

	/** getter and setter **/
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
