package formulaParser.formulaAbsyntree;

import pipe.dataLayer.abToken;
import formulaParser.Visitor;

public class ExpTerm extends Term{
	public Exp e;
	public boolean bool_val;
	public int int_val;
	public abToken abTok;
	public String strPre = "";
	public String strPost = "";
	public boolean postcond = false;
	public String placeName;
	public String varName;
	public boolean isUserVariable = false;
	public ExpTerm(int p, Exp e){
		this.pos = p;
		this.e = e;
	}
	public void accept(Visitor v){
		v.visit(this);
	}

}
