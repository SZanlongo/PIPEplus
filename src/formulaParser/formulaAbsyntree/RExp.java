package formulaParser.formulaAbsyntree;

import formulaParser.Visitor;

public class RExp extends Exp{
	public RelExp re;
	public boolean bool_val;
	public String strPre = "";
	public String strPost = "";
	public RExp(int p, RelExp re){
		this.pos = p;
		this.re = re;
	}
	
	public void accept(Visitor v){
		v.visit(this);
	}
}
