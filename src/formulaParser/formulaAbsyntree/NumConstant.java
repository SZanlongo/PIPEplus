package formulaParser.formulaAbsyntree;
import formulaParser.Visitor;
public class NumConstant extends Constant{
	public Num num;
	public int int_val;
	public NumConstant(int p, Num num){
		this.pos = p;
		this.num = num;
	}
	public void accept(Visitor v){
		v.visit(this);
	}
}
