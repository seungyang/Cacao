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
	private String dPay; //결제수단
	private String dName; //주문자명
	private String dTel; //연락처
	private String dMemo; //배송메모
	private String dAddr; //배송주소
	private String oStr;  //dId 값 가져오는거
	private String dTotal; //결제총금액
	private String dCancel; //주문취소 T or F 값




	public String getdPay() {
		return dPay;
	}
	public void setdPay(String dPay) {
		this.dPay = dPay;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getdTel() {
		return dTel;
	}
	public void setdTel(String dTel) {
		this.dTel = dTel;
	}
	public String getdMemo() {
		return dMemo;
	}
	public void setdMemo(String dMemo) {
		this.dMemo = dMemo;
	}
	public String getdAddr() {
		return dAddr;
	}
	public void setdAddr(String dAddr) {
		this.dAddr = dAddr;
	}
	public String getdTotal() {
		return dTotal;
	}
	public void setdTotal(String dTotal) {
		this.dTotal = dTotal;
	}
	public String getdCancel() {
		return dCancel;
	}
	public void setdCancel(String dCancel) {
		this.dCancel = dCancel;
	}
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
	public String getoStr() {
		return oStr;
	}
	public void setoStr(String oStr) {
		this.oStr = oStr;
	}
	
	

}