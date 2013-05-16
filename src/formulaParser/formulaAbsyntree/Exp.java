package formulaParser.formulaAbsyntree;
import formulaParser.Visitor;
public abstract class Exp extends Term{
	public int pos;
	public abstract void accept(Visitor v);
}
