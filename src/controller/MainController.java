package controller;

import model.MainModel;
import model.login.LoginDao;
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

		// ventana provider
		view.getvOrdenFrame().getBtnBSearchProvider().addActionListener((e) -> onActionBtnSearchProvider());
		view.getvOrdenFrame().getBtnDone().addActionListener((e)-> onActionBtnDoneNewOrder());
		view.getvOrdenFrame().getBtnCancel().addActionListener((e)-> onActionBtnSearchOrder());
		
		
		
		
	}

	private void onActionBtnDoneNewOrder() {
		view.getvOrdenFrame().setVisible(false);
		view.getvSelectItems().setVisible(true);
	}

	private Object onActionBtnSearchProvider() {
		// TODO Auto-generated method stub
		return null;
	}

	// levanta vista para buscar ordenes
	private void onActionBtnSearchOrder() {
		// TODO Auto-generated method stub

	}

	private void  onActionBtnNewOrder() {
		view.getvOrdenFrame().setVisible(true);
		view.getvOptionMenu().setVisible(false);
		
	}

	private void onActionBtnAddProvider() {
		view.getvOptionMenu().setVisible(false);
		view.getvProvider().setVisible(true);
	}

	/** acciones llamandadas en los lambda de cada listener **/

	// Ingreso al aplicativo
	public void onActionBtnSingInLogin() {
		System.out.println("work log");

		LoginDao mLogin = new LoginDao();

		if (view.getvLogin().getTxtUserLogin().getText().isEmpty()
				|| view.getvLogin().getTxtPasswordLogin().getText().isEmpty()) {
			view.getvLogin().getLblError()
					.setText("Debe ingresar todos los espacios para poder ingresar al aplicativo");

		} else {
			if (mLogin.singIn(view.getvLogin().getTxtUserLogin().getText().toLowerCase(),
					view.getvLogin().getTxtPasswordLogin().getText())) {
				System.out.println("Usuario logueado");
				view.getvLogin().setVisible(false);
				view.getvOptionMenu().setVisible(true);
			} else {

				view.getvLogin().getLblError().setText("Usuario o contraseña no encontrado");

			}

		}

	}

	/** getter and setter **/

	public MainView getView() {
		return view;
	}
}