package formulaParser.formulaAbsyntree;
import formulaParser.Visitor;
public class NegExp extends ArithExp{
	public int int_val;
	public Term t;
	public NegExp(int p, Term t){
		this.pos = p;
		this.t = t;
	}
	public void accept(Visitor v){
		v.visit(this);
	}
}
