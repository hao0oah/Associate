package com.founder.hao.entity;

import java.math.BigDecimal;
import java.sql.Date;

public class DepositBaseAccount {
	private String  base_acct_no              ;      
	private	String	open_bank_no		  ;
	private	String	acct_no			  ;
	private	String	ccy			  ;
	private	String	cust_id			  ;
	private	String	acct_status		  ;
	private	String	acct_type		  ;
	private	String	doc_type		  ;
	private	String	voucher_no		  ;
	private	String	withdrawal_type		  ;
	private	Date	acct_open_date		  ;
	private	Date	acct_close_date		  ;
	private	String	user_id			  ;
	private	String	officer_id		  ;
	private	String	status_chg_date		  ;
	private	String	last_tran_date		  ;
	private	BigDecimal	actual_bal		  ;
	private	BigDecimal	agg_bal			  ;
	private	BigDecimal	cr_acct_level_int_rate	  ;
	private	BigDecimal	cr_spread_rate		  ;
	private	String	acct_name		  ;
	private	String	deposit_term 		  ;
	private	String	cr_third_party_acct	  ;
	private	Date	maturity_date		  ;
	public String getBase_acct_no() {
		return base_acct_no;
	}
	public void setBase_acct_no(String base_acct_no) {
		this.base_acct_no = base_acct_no;
	}
	public String getOpen_bank_no() {
		return open_bank_no;
	}
	public void setOpen_bank_no(String open_bank_no) {
		this.open_bank_no = open_bank_no;
	}
	public String getAcct_no() {
		return acct_no;
	}
	public void setAcct_no(String acct_no) {
		this.acct_no = acct_no;
	}
	public String getCcy() {
		return ccy;
	}
	public void setCcy(String ccy) {
		this.ccy = ccy;
	}
	public String getCust_id() {
		return cust_id;
	}
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}
	public String getAcct_status() {
		return acct_status;
	}
	public void setAcct_status(String acct_status) {
		this.acct_status = acct_status;
	}
	public String getAcct_type() {
		return acct_type;
	}
	public void setAcct_type(String acct_type) {
		this.acct_type = acct_type;
	}
	public String getDoc_type() {
		return doc_type;
	}
	public void setDoc_type(String doc_type) {
		this.doc_type = doc_type;
	}
	public String getVoucher_no() {
		return voucher_no;
	}
	public void setVoucher_no(String voucher_no) {
		this.voucher_no = voucher_no;
	}
	public String getWithdrawal_type() {
		return withdrawal_type;
	}
	public void setWithdrawal_type(String withdrawal_type) {
		this.withdrawal_type = withdrawal_type;
	}
	public Date getAcct_open_date() {
		return acct_open_date;
	}
	public void setAcct_open_date(Date acct_open_date) {
		this.acct_open_date = acct_open_date;
	}
	public Date getAcct_close_date() {
		return acct_close_date;
	}
	public void setAcct_close_date(Date acct_close_date) {
		this.acct_close_date = acct_close_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getOfficer_id() {
		return officer_id;
	}
	public void setOfficer_id(String officer_id) {
		this.officer_id = officer_id;
	}
	public String getStatus_chg_date() {
		return status_chg_date;
	}
	public void setStatus_chg_date(String status_chg_date) {
		this.status_chg_date = status_chg_date;
	}
	public String getLast_tran_date() {
		return last_tran_date;
	}
	public void setLast_tran_date(String last_tran_date) {
		this.last_tran_date = last_tran_date;
	}
	public BigDecimal getActual_bal() {
		return actual_bal;
	}
	public void setActual_bal(BigDecimal actual_bal) {
		this.actual_bal = actual_bal;
	}
	public BigDecimal getAgg_bal() {
		return agg_bal;
	}
	public void setAgg_bal(BigDecimal agg_bal) {
		this.agg_bal = agg_bal;
	}
	public BigDecimal getCr_acct_level_int_rate() {
		return cr_acct_level_int_rate;
	}
	public void setCr_acct_level_int_rate(BigDecimal cr_acct_level_int_rate) {
		this.cr_acct_level_int_rate = cr_acct_level_int_rate;
	}
	public BigDecimal getCr_spread_rate() {
		return cr_spread_rate;
	}
	public void setCr_spread_rate(BigDecimal cr_spread_rate) {
		this.cr_spread_rate = cr_spread_rate;
	}
	public String getAcct_name() {
		return acct_name;
	}
	public void setAcct_name(String acct_name) {
		this.acct_name = acct_name;
	}
	public String getDeposit_term() {
		return deposit_term;
	}
	public void setDeposit_term(String deposit_term) {
		this.deposit_term = deposit_term;
	}
	public String getCr_third_party_acct() {
		return cr_third_party_acct;
	}
	public void setCr_third_party_acct(String cr_third_party_acct) {
		this.cr_third_party_acct = cr_third_party_acct;
	}
	public Date getMaturity_date() {
		return maturity_date;
	}
	public void setMaturity_date(Date maturity_date) {
		this.maturity_date = maturity_date;
	}
	
}
