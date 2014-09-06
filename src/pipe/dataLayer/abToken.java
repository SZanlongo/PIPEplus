package pipe.dataLayer;

import java.util.*;

public class abToken {
	private DataType tokenType;
	public Vector<Token> listToken;
	private boolean isDef;

	public abToken() {
		isDef = false;
		tokenType = null;
		listToken = new Vector();
	}

	public abToken(DataType input) {
		definetype(input);
		listToken = new Vector();
	}

	public void definetype(DataType input) {
		tokenType = input;
		isDef = true;
	}

	public boolean addToken(Token t) {
		// if(!isDef)
		// return false;
		listToken.add(t);
		return true;
	}

	public boolean deleteToken(Token t) {

		Iterator<Token> it = listToken.iterator();
		while (it.hasNext()) {
			Token tempTok = it.next();
			boolean tbool = true;
			for (int i = 0; i < tempTok.Tlist.size(); i++) {
				if (t.Tlist.elementAt(i).kind != tempTok.Tlist.elementAt(i).kind
						|| t.Tlist.elementAt(i).Tint != tempTok.Tlist
								.elementAt(i).Tint
						|| !strCompare(t.Tlist.elementAt(i).Tstring,
								tempTok.Tlist.elementAt(i).Tstring)) {
					tbool = tbool && false;
				} else
					tbool = tbool && true;
			}

			if (tbool) {
				it.remove();
			}

		}

		return true;
	}

	public boolean strCompare(String s1, String s2) {
		boolean bool = false;

		if (s1 == null || s2 == null)
			bool = true;
		else if (s1.equals(s2))
			bool = true;

		return bool;
	}

	public Token getTokenbyIndex(int index) {
		return listToken.get(index);
	}

	public int getTokenCount() {
		return listToken.size();
	}

	public DataType getDataType() {
		return tokenType;
	}

	public boolean getDef() {
		return isDef;
	}

}
