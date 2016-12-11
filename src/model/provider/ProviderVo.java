package model.provider;

public class ProviderVo {
	
	private String idProvider=null; 	
	private String nitProvider=null;
	private String nameProvider=null;
	private String phoneProvider=null;
	private String adressProvider=null;
	
	
	
	public ProviderVo(String nitProvider, String nameProvider, String phoneProvider, String adressprovider) {
		
		setNitProvider(nitProvider);
		setAdressProvider(adressprovider);
		setNameProvider(nameProvider);
		setPhoneProvider(phoneProvider);

	}
	
	
	public String getIdProvider() {
		return idProvider;
	}
	public void setIdProvider(String idProvider) {
		this.idProvider = idProvider;
	}
	public String getNitProvider() {
		return nitProvider;
	}
	public void setNitProvider(String nitProvider) {
		this.nitProvider = nitProvider;
	}
	public String getNameProvider() {
		return nameProvider;
	}
	public void setNameProvider(String nameProvider) {
		this.nameProvider = nameProvider;
	}
	public String getPhoneProvider() {
		return phoneProvider;
	}
	public void setPhoneProvider(String phoneProvider) {
		this.phoneProvider = phoneProvider;
	}
	public String getAdressProvider() {
		return adressProvider;
	}
	public void setAdressProvider(String adressProvider) {
		this.adressProvider = adressProvider;
	}
	
	
	

}
