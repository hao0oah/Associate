package com.founder.hao.entity;

import java.math.BigDecimal;
import java.sql.Date;

public class LoanBaseAccount {
	private String	loan_no           ;
	private String	contract	  ;
	private String	cmisloan_no	  ;
	private String	loan_type	  ;
	private Date	cb_status_change  ;
	private String	borrower	  ;
	private String	book_branch	  ;
	private Date	start_date	  ;
	private Date	mature_date	  ;
	private String	ccy		  ;
	private BigDecimal	loan_amt	  ;
	private BigDecimal	outstanding	  ;
	private BigDecimal	os_less_past_due  ;
	private String	repay_mode	  ;
	private BigDecimal	int_rate	  ;
	private String	pri_penalty	  ;
	private String	int_penalty	  ;
	private String	od_pri_penalty	  ;
	private String	od_int_penalty	  ;
	private BigDecimal	pri_plty_rate	  ;
	private BigDecimal	int_plty_rate	  ;
	private String	int_appl_type	  ;
	private String	roll_freq	  ;
	private Date	roll_date	  ;
	private String	int_repay_freq	  ;
	private Date	last_int_rep_date ;
	private Date	next_int_rep_date ;
	private Date	next_pri_rep_date ;
	private String	reversed_matured  ;
	private String	write_off	  ;
	private Date	write_off_date	 	;
	private String	auto_rec_gen	 	;
	private String	base_acct_no_auto	;
	private String	acct_exec	 	;
	private String	user_id		 	;
	private String	int_repay_day	 	;
	private BigDecimal	stage_amt	 	;
	private BigDecimal	stage_capital	 	;
	private BigDecimal	stage_inter	 	;
	private BigDecimal	undo_amt	 	;
	private BigDecimal	undo_capital	 	;
	private BigDecimal	undo_inter	 	;
	private Date	pay_off_date	 	;
	public String getLoan_no() {
		return loan_no;
	}
	public void setLoan_no(String loan_no) {
		this.loan_no = loan_no;
	}
	public String getContract() {
		return contract;
	}
	public void setContract(String contract) {
		this.contract = contract;
	}
	public String getCmisloan_no() {
		return cmisloan_no;
	}
	public void setCmisloan_no(String cmisloan_no) {
		this.cmisloan_no = cmisloan_no;
	}
	public String getLoan_type() {
		return loan_type;
	}
	public void setLoan_type(String loan_type) {
		this.loan_type = loan_type;
	}
	public Date getCb_status_change() {
		return cb_status_change;
	}
	public void setCb_status_change(Date cb_status_change) {
		this.cb_status_change = cb_status_change;
	}
	public String getBorrower() {
		return borrower;
	}
	public void setBorrower(String borrower) {
		this.borrower = borrower;
	}
	public String getBook_branch() {
		return book_branch;
	}
	public void setBook_branch(String book_branch) {
		this.book_branch = book_branch;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getMature_date() {
		return mature_date;
	}
	public void setMature_date(Date mature_date) {
		this.mature_date = mature_date;
	}
	public String getCcy() {
		return ccy;
	}
	public void setCcy(String ccy) {
		this.ccy = ccy;
	}
	public BigDecimal getLoan_amt() {
		return loan_amt;
	}
	public void setLoan_amt(BigDecimal loan_amt) {
		this.loan_amt = loan_amt;
	}
	public BigDecimal getOutstanding() {
		return outstanding;
	}
	public void setOutstanding(BigDecimal outstanding) {
		this.outstanding = outstanding;
	}
	public BigDecimal getOs_less_past_due() {
		return os_less_past_due;
	}
	public void setOs_less_past_due(BigDecimal os_less_past_due) {
		this.os_less_past_due = os_less_past_due;
	}
	public String getRepay_mode() {
		return repay_mode;
	}
	public void setRepay_mode(String repay_mode) {
		this.repay_mode = repay_mode;
	}
	public BigDecimal getInt_rate() {
		return int_rate;
	}
	public void setInt_rate(BigDecimal int_rate) {
		this.int_rate = int_rate;
	}
	public String getPri_penalty() {
		return pri_penalty;
	}
	public void setPri_penalty(String pri_penalty) {
		this.pri_penalty = pri_penalty;
	}
	public String getInt_penalty() {
		return int_penalty;
	}
	public void setInt_penalty(String int_penalty) {
		this.int_penalty = int_penalty;
	}
	public String getOd_pri_penalty() {
		return od_pri_penalty;
	}
	public void setOd_pri_penalty(String od_pri_penalty) {
		this.od_pri_penalty = od_pri_penalty;
	}
	public String getOd_int_penalty() {
		return od_int_penalty;
	}
	public void setOd_int_penalty(String od_int_penalty) {
		this.od_int_penalty = od_int_penalty;
	}
	public BigDecimal getPri_plty_rate() {
		return pri_plty_rate;
	}
	public void setPri_plty_rate(BigDecimal pri_plty_rate) {
		this.pri_plty_rate = pri_plty_rate;
	}
	public BigDecimal getInt_plty_rate() {
		return int_plty_rate;
	}
	public void setInt_plty_rate(BigDecimal int_plty_rate) {
		this.int_plty_rate = int_plty_rate;
	}
	public String getInt_appl_type() {
		return int_appl_type;
	}
	public void setInt_appl_type(String int_appl_type) {
		this.int_appl_type = int_appl_type;
	}
	public String getRoll_freq() {
		return roll_freq;
	}
	public void setRoll_freq(String roll_freq) {
		this.roll_freq = roll_freq;
	}
	public Date getRoll_date() {
		return roll_date;
	}
	public void setRoll_date(Date roll_date) {
		this.roll_date = roll_date;
	}
	public String getInt_repay_freq() {
		return int_repay_freq;
	}
	public void setInt_repay_freq(String int_repay_freq) {
		this.int_repay_freq = int_repay_freq;
	}
	public Date getLast_int_rep_date() {
		return last_int_rep_date;
	}
	public void setLast_int_rep_date(Date last_int_rep_date) {
		this.last_int_rep_date = last_int_rep_date;
	}
	public Date getNext_int_rep_date() {
		return next_int_rep_date;
	}
	public void setNext_int_rep_date(Date next_int_rep_date) {
		this.next_int_rep_date = next_int_rep_date;
	}
	public Date getNext_pri_rep_date() {
		return next_pri_rep_date;
	}
	public void setNext_pri_rep_date(Date next_pri_rep_date) {
		this.next_pri_rep_date = next_pri_rep_date;
	}
	public String getReversed_matured() {
		return reversed_matured;
	}
	public void setReversed_matured(String reversed_matured) {
		this.reversed_matured = reversed_matured;
	}
	public String getWrite_off() {
		return write_off;
	}
	public void setWrite_off(String write_off) {
		this.write_off = write_off;
	}
	public Date getWrite_off_date() {
		return write_off_date;
	}
	public void setWrite_off_date(Date write_off_date) {
		this.write_off_date = write_off_date;
	}
	public String getAuto_rec_gen() {
		return auto_rec_gen;
	}
	public void setAuto_rec_gen(String auto_rec_gen) {
		this.auto_rec_gen = auto_rec_gen;
	}
	public String getBase_acct_no_auto() {
		return base_acct_no_auto;
	}
	public void setBase_acct_no_auto(String base_acct_no_auto) {
		this.base_acct_no_auto = base_acct_no_auto;
	}
	public String getAcct_exec() {
		return acct_exec;
	}
	public void setAcct_exec(String acct_exec) {
		this.acct_exec = acct_exec;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getInt_repay_day() {
		return int_repay_day;
	}
	public void setInt_repay_day(String int_repay_day) {
		this.int_repay_day = int_repay_day;
	}
	public BigDecimal getStage_amt() {
		return stage_amt;
	}
	public void setStage_amt(BigDecimal stage_amt) {
		this.stage_amt = stage_amt;
	}
	public BigDecimal getStage_capital() {
		return stage_capital;
	}
	public void setStage_capital(BigDecimal stage_capital) {
		this.stage_capital = stage_capital;
	}
	public BigDecimal getStage_inter() {
		return stage_inter;
	}
	public void setStage_inter(BigDecimal stage_inter) {
		this.stage_inter = stage_inter;
	}
	public BigDecimal getUndo_amt() {
		return undo_amt;
	}
	public void setUndo_amt(BigDecimal undo_amt) {
		this.undo_amt = undo_amt;
	}
	public BigDecimal getUndo_capital() {
		return undo_capital;
	}
	public void setUndo_capital(BigDecimal undo_capital) {
		this.undo_capital = undo_capital;
	}
	public BigDecimal getUndo_inter() {
		return undo_inter;
	}
	public void setUndo_inter(BigDecimal undo_inter) {
		this.undo_inter = undo_inter;
	}
	public Date getPay_off_date() {
		return pay_off_date;
	}
	public void setPay_off_date(Date pay_off_date) {
		this.pay_off_date = pay_off_date;
	}
	
	
	
	
}
