package formulaParser.formulaAbsyntree;

import formulaParser.Visitor;
public abstract class Formula {
	public int pos;
	public abstract void accept(Visitor v);
}
