package cacao.model.vo;

public class Order {

	private String oId;
	private String dId;
	private String mEmail;
	private String iId; //상품코드
	private String oCnt;
	private String iName; // 상품명
	private String dStatus;
	private String iCost;
	
	
	public String getoId() {
		return oId;
	}
	public void setoId(String oId) {
		this.oId = oId;
	}
	public String getdId() {
		return dId;
	}
	public void setdId(String dId) {
		this.dId = dId;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getiId() {
		return iId;
	}
	public void setiId(String iId) {
		this.iId = iId;
	}
	public String getoCnt() {
		return oCnt;
	}
	public void setoCnt(String oCnt) {
		this.oCnt = oCnt;
	}
	public String getiName() {
		return iName;
	}
	public void setiName(String iName) {
		this.iName = iName;
	}
	public String getdStatus() {
		return dStatus;
	}
	public void setdStatus(String dStatus) {
		this.dStatus = dStatus;
	}
	public String getiCost() {
		return iCost;
	}
	public void setiCost(String iCost) {
		this.iCost = iCost;
	}	
	
}
