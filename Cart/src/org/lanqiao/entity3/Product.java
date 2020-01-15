package org.lanqiao.entity3;

public class Product {

	private Integer RANK;
	private String TITLE;
	private String MAJOR;
	private String YEAR;
	private String IMDB_RATING;
	private String COVER;
	private String IMDB_PAGE;
	private Integer PRICE;
	private Integer STATUS;
	private Integer REMAIN;
	private String  DESCRIPTION;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(Integer rANK, String tITLE, String mAJOR, String yEAR, String iMDB_RATING, String cOVER,
			String iMDB_PAGE, Integer pRICE, Integer sTATUS, Integer rEMAIN, String dESCRIPTION) {
		super();
		RANK = rANK;
		TITLE = tITLE;
		MAJOR = mAJOR;
		YEAR = yEAR;
		IMDB_RATING = iMDB_RATING;
		COVER = cOVER;
		IMDB_PAGE = iMDB_PAGE;
		PRICE = pRICE;
		STATUS = sTATUS;
		REMAIN = rEMAIN;
		DESCRIPTION = dESCRIPTION;
	}
	public Integer getRANK() {
		return RANK;
	}
	public void setRANK(Integer rANK) {
		RANK = rANK;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getMAJOR() {
		return MAJOR;
	}
	public void setMAJOR(String mAJOR) {
		MAJOR = mAJOR;
	}
	public String getYEAR() {
		return YEAR;
	}
	public void setYEAR(String yEAR) {
		YEAR = yEAR;
	}
	public String getIMDB_RATING() {
		return IMDB_RATING;
	}
	public void setIMDB_RATING(String iMDB_RATING) {
		IMDB_RATING = iMDB_RATING;
	}
	public String getCOVER() {
		return COVER;
	}
	public void setCOVER(String cOVER) {
		COVER = cOVER;
	}
	public String getIMDB_PAGE() {
		return IMDB_PAGE;
	}
	public void setIMDB_PAGE(String iMDB_PAGE) {
		IMDB_PAGE = iMDB_PAGE;
	}
	public Integer getPRICE() {
		return PRICE;
	}
	public void setPRICE(Integer pRICE) {
		PRICE = pRICE;
	}
	public Integer getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(Integer sTATUS) {
		STATUS = sTATUS;
	}
	public Integer getREMAIN() {
		return REMAIN;
	}
	public void setREMAIN(Integer rEMAIN) {
		REMAIN = rEMAIN;
	}
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}
	@Override
	public String toString() {
		return "Product [RANK=" + RANK + ", TITLE=" + TITLE + ", MAJOR=" + MAJOR + ", YEAR=" + YEAR + ", IMDB_RATING="
				+ IMDB_RATING + ", COVER=" + COVER + ", IMDB_PAGE=" + IMDB_PAGE + ", PRICE=" + PRICE + ", STATUS="
				+ STATUS + ", REMAIN=" + REMAIN + ", DESCRIPTION=" + DESCRIPTION + "]";
	}
	
	
	
	
	
	
}
