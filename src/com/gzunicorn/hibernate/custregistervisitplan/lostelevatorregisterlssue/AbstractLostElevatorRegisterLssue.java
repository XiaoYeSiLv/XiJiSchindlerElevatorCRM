package com.gzunicorn.hibernate.custregistervisitplan.lostelevatorregisterlssue;

/**
 * AbstractLostElevatorRegisterLssue entity provides the base persistence
 * definition of the LostElevatorRegisterLssue entity. @author MyEclipse
 * Persistence Tools
 */

public abstract class AbstractLostElevatorRegisterLssue implements
		java.io.Serializable {

	// Fields

	private Integer numno;
	private String jnlno;
	private String lssueDetail;
	private String r1;
	private String r2;
	private String r3;
	private String r4;
	private String r5;
	private Double r6;
	private Integer r7;
	private Integer r8;
	private Double r9;
	private Double r10;

	// Constructors

	/** default constructor */
	public AbstractLostElevatorRegisterLssue() {
	}

	/** minimal constructor */
	public AbstractLostElevatorRegisterLssue(String jnlno, String lssueDetail) {
		this.jnlno = jnlno;
		this.lssueDetail = lssueDetail;
	}

	/** full constructor */
	public AbstractLostElevatorRegisterLssue(String jnlno, String lssueDetail,
			String r1, String r2, String r3, String r4, String r5, Double r6,
			Integer r7, Integer r8, Double r9, Double r10) {
		this.jnlno = jnlno;
		this.lssueDetail = lssueDetail;
		this.r1 = r1;
		this.r2 = r2;
		this.r3 = r3;
		this.r4 = r4;
		this.r5 = r5;
		this.r6 = r6;
		this.r7 = r7;
		this.r8 = r8;
		this.r9 = r9;
		this.r10 = r10;
	}

	// Property accessors

	public Integer getNumno() {
		return this.numno;
	}

	public void setNumno(Integer numno) {
		this.numno = numno;
	}

	public String getJnlno() {
		return this.jnlno;
	}

	public void setJnlno(String jnlno) {
		this.jnlno = jnlno;
	}

	public String getLssueDetail() {
		return this.lssueDetail;
	}

	public void setLssueDetail(String lssueDetail) {
		this.lssueDetail = lssueDetail;
	}

	public String getR1() {
		return this.r1;
	}

	public void setR1(String r1) {
		this.r1 = r1;
	}

	public String getR2() {
		return this.r2;
	}

	public void setR2(String r2) {
		this.r2 = r2;
	}

	public String getR3() {
		return this.r3;
	}

	public void setR3(String r3) {
		this.r3 = r3;
	}

	public String getR4() {
		return this.r4;
	}

	public void setR4(String r4) {
		this.r4 = r4;
	}

	public String getR5() {
		return this.r5;
	}

	public void setR5(String r5) {
		this.r5 = r5;
	}

	public Double getR6() {
		return this.r6;
	}

	public void setR6(Double r6) {
		this.r6 = r6;
	}

	public Integer getR7() {
		return this.r7;
	}

	public void setR7(Integer r7) {
		this.r7 = r7;
	}

	public Integer getR8() {
		return this.r8;
	}

	public void setR8(Integer r8) {
		this.r8 = r8;
	}

	public Double getR9() {
		return this.r9;
	}

	public void setR9(Double r9) {
		this.r9 = r9;
	}

	public Double getR10() {
		return this.r10;
	}

	public void setR10(Double r10) {
		this.r10 = r10;
	}

}