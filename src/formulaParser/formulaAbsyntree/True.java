package formulaParser.formulaAbsyntree;
import formulaParser.Visitor;
public class True extends Constant{
	public boolean bool_val;
	
	public True(int p){
		this.pos = p;
	}
	public void accept(Visitor v){
		v.visit(this);
	}
}
