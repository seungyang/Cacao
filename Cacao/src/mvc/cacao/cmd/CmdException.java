package mvc.cacao.cmd;

//mvc 에러 exception
public class CmdException extends Exception{
	  public CmdException(){
	  		super();
	  	}
	  	
	  public CmdException(String error){
	  		super( error );
	  	}

}
