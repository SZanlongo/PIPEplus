package formulaParser.formulaAbsyntree;

import formulaParser.Visitor;

public class AtFormula extends Formula{

	public AtomicFormula af;
	public boolean bool_val;
	public String strPre = "";
	public String strPost = "";
	public String str = "";
	public int treeLevel;
	
	public AtFormula(int p, AtomicFormula af){
		this.pos = p;
		this.af = af;
	}
	
	public void accept(Visitor v){
		v.visit(this);
	}
}
