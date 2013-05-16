package formulaParser.formulaAbsyntree;

import pipe.dataLayer.abToken;
import formulaParser.Visitor;

public class SExp extends Exp{
	public SetExp se;
	public abToken abTok;
	public String placeName;
	public String varName;
	public boolean isUserVariable = false;
//	public String str;
	public SExp(int p, SetExp se){
		this.pos = p;
		this.se = se;
	}
	public void accept(Visitor v){
		v.visit(this);
	}
}
