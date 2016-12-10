package controller;

import model.LoginModel;
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

		// ventana de logueo
		view.getvLogin().getBtnSingIn().addActionListener((e) -> onActionBtnSingInLogin());

		// ventana de opciones
		view.getvOptionMenu().getBtnAddProvedor().addActionListener((e) -> onActionBtnAddProvider());
		view.getvOptionMenu().getBtnSearchOrden().addActionListener((e) -> onActionBtnSearchOrder());
		view.getvOptionMenu().getBtnNewOrden().addActionListener((e) -> onActionBtnNewOrder());

	}

	private Object onActionBtnSearchOrder() {
		// TODO Auto-generated method stub
		return null;
	}

	private Object onActionBtnNewOrder() {
		// TODO Auto-generated method stub
		return null;
	}

	private void onActionBtnAddProvider() {
		view.getvOptionMenu().setVisible(false);
		view.getvProvider().setVisible(true);
	}

	/** acciones llamandadas en los lambda de cada listener **/

	public void onActionBtnSingInLogin() {
		System.out.println("work log");

		LoginModel mLogin = new LoginModel();
		
		if (view.getvLogin().getTxtUserLogin().getText().isEmpty()
				|| view.getvLogin().getTxtPasswordLogin().getText().isEmpty()) {
			view.getvLogin().getLblError()
					.setText("Debe ingresar todos los espacios para poder ingresar al aplicativo");

		} else {
			if (mLogin.singIn(view.getvLogin().getTxtUserLogin().getText().toLowerCase(),view.getvLogin().getTxtPasswordLogin().getText())) {
				System.out.println("Usuario logueado");
				view.getvLogin().setVisible(false);
				view.getvOptionMenu().setVisible(true);
			} else {

				view.getvLogin().getLblError().setText("Usuario o contraseña no encontrado");

			}

		}

	}

	//////////////////////////////////////

	private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {
		// TODO add your handling code here:

	}

	//////////////////////////////////////////

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
