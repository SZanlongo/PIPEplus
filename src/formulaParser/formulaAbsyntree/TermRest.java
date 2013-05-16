package formulaParser.formulaAbsyntree;
import formulaParser.Visitor;
public class TermRest {

	public int pos;
	public Term t;
	public String str = "";
	
	public TermRest(int p, Term t){
		this.pos = p;
		this.t = t;
	}
	public void accept(Visitor v){
		v.visit(this);
	}	
}
