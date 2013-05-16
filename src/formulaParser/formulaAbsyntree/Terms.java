package formulaParser.formulaAbsyntree;
import pipe.dataLayer.Token;
import formulaParser.Visitor;
public class Terms {

	public Token Tok;
	int pos;
	public Term t;
	public TermRestList tr;
	public String str = "";
	public String placeName;
	public Terms(int p, Term t, TermRestList tr){
		this.pos = p;
		this.t = t;
		this.tr = tr;
	}
	public void accept(Visitor v){
		v.visit(this);
	}
}
