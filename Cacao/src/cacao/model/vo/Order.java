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
   private String oPayment; //결제수단
   private String oName; //주문자명
   private String oTel; //연락처
   private String oMemo; //배송메모
   private String oAddr; //배송주소
   
   
   
   public String getoAddr() {
	return oAddr;
}
public void setoAddr(String oAddr) {
	this.oAddr = oAddr;
}
public String getoMemo() {
	return oMemo;
}
public void setoMemo(String oMemo) {
	this.oMemo = oMemo;
}
public String getoTel() {
	return oTel;
}
public void setoTel(String oTel) {
	this.oTel = oTel;
}
public String getoName() {
	return oName;
}
public void setoName(String oName) {
	this.oName = oName;
}
public String getoPayment() {
	return oPayment;
}
public void setoPayment(String oPayment) {
	this.oPayment = oPayment;
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

}