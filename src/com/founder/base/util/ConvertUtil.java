package com.founder.base.util;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * @author wenchao
 * 状态码转换类
 */
public class ConvertUtil {

	/**
	 * Descrption:业务状态转换类
	 * 
	 * @return String
	 * @throws java.lang.Exception
	 */
	public static String getChinStatus(String status) throws Exception {
		Map<String, String> statusMap = new HashMap<String, String>();
		statusMap.put("PR00", "已转发");
		statusMap.put("PR01", "待认证");
		statusMap.put("PR02", "已付款");
		statusMap.put("PR03", "已轧差");
		statusMap.put("PR04", "已清算");
		statusMap.put("PR05", "已成功");
		statusMap.put("PR06", "待处理");
		statusMap.put("PR07", "已处理");
		statusMap.put("PR08", "已撤销");
		statusMap.put("PR09", "已拒绝");
		statusMap.put("PR10", "已确认");
		statusMap.put("PR11", "轧差排队");
		statusMap.put("PR12", "清算排队");
		statusMap.put("PR13", "清算异常，待重新清算");
		statusMap.put("PR21", "已止付");
		statusMap.put("PR22", "已冲正");
		statusMap.put("PR23", "已整包退回");
		statusMap.put("PR24", "NPC未受理");
		statusMap.put("PR25", "已部分退回");
		statusMap.put("PR32", "已超期（逾期退回）");
		statusMap.put("PR39", "强制调减待处理");

		for (String key : statusMap.keySet()) {

			if (key.equals(status)) {
				status = statusMap.get(key);
				break;
			}

		}
		return status;
	}

	/**
	 * Descrption:IBPS使用的业务类型编码
	 * 
	 * @return String
	 * @throws java.lang.Exception
	 */
	public static String getIbpsStatus(String status) throws Exception {
		Map<String, String> ibpsMap = new HashMap<String, String>();
		ibpsMap.put("C200", "汇兑");
		ibpsMap.put("C201", "投资理财");
		ibpsMap.put("C202", "网络购物");
		ibpsMap.put("C203", "商旅服务");
		ibpsMap.put("C204", "缴费");
		ibpsMap.put("C205", "慈善捐款");
		ibpsMap.put("C206", "贷款还款");
		ibpsMap.put("C207", "预授权结算");
		ibpsMap.put("C208", "交易退款");
		ibpsMap.put("C209", "实时代付");
		ibpsMap.put("C210", "其他");
		ibpsMap.put("D200", "实时代收");
		ibpsMap.put("D201", "贷款还款");
		ibpsMap.put("D202", "其他");
		ibpsMap.put("M331", "预授权申请业务");
		ibpsMap.put("M333", "预授权撤销业务");
		ibpsMap.put("M335", "授权支付协议管理申请业务");
		ibpsMap.put("M337", "授权支付协议管理通知业务");
		ibpsMap.put("M339", "账户信息查询协议管理申请业务");
		ibpsMap.put("M341", "账户信息查询协议管理通知业务");
		ibpsMap.put("M309", "账户余额查询业务");
		ibpsMap.put("M311", "账户交易明细查询业务");
		ibpsMap.put("M303", "自由格式报文");
		ibpsMap.put("CRDT", "贷记");
		ibpsMap.put("DBIT", "借记");
		for (String key : ibpsMap.keySet()) {

			if (key.equals(status)) {
				status = ibpsMap.get(key);
				break;
			}

		}
		return status;

	}

	/**
	 * 1.2.5 业务类型与业务种类对照表
	 */
	public static String typeConvert(String status) throws Exception {
		Map<String, String> typesMap = new HashMap<String, String>();
		typesMap.put("02001", "汇兑");
		typesMap.put("02002", "理财股票类");
		typesMap.put("02003", "理财基金类");
		typesMap.put("02004", "理财保险类");
		typesMap.put("02005", "理财彩票类");
		typesMap.put("02006", "理财黄金类");
		typesMap.put("02007", "理财债券类");
		typesMap.put("02008", "理财其他类");
		typesMap.put("02009", "网络购物服装类");
		typesMap.put("02010", "网络购物饰品类");
		typesMap.put("02011", "网络购物家居类");
		typesMap.put("02012", "网络购物生活类");
		typesMap.put("02013", "网络购物食品类");
		typesMap.put("02014", "网络购物虚拟类");
		typesMap.put("02015", "网络购物机票类");
		typesMap.put("02016", "网络购物旅游类");
		typesMap.put("02017", "网络购物美容类");
		typesMap.put("02018", "网络购物数码类");
		typesMap.put("02019", "网络购物电器类");
		typesMap.put("02020", "网络购物文体类");
		typesMap.put("02021", "商旅服务酒店类");
		typesMap.put("02022", "商旅服务机票类");
		typesMap.put("02023", "商旅服务其他类");
		typesMap.put("00100", "电费");
		typesMap.put("00200", "水暖费");
		typesMap.put("00300", "煤气费");
		typesMap.put("00400", "电话费");
		typesMap.put("00500", "通讯费");
		typesMap.put("00600", "保险费");
		typesMap.put("00700", "房屋管理费");
		typesMap.put("00800", "代理服务费");
		typesMap.put("00900", "学教费");
		typesMap.put("01000", "有线电视费");
		typesMap.put("01100", "企业管理费用");
		typesMap.put("01200", "薪金报酬");
		typesMap.put("02024", "慈善捐款");
		typesMap.put("02025", "贷款还款房贷类");
		typesMap.put("02026", "贷款还款车贷类");
		typesMap.put("02027", "贷款还款信用卡类");
		typesMap.put("02028", "预授权结算");
		typesMap.put("02009", "网络购物服装类");
		typesMap.put("02010", "网络购物饰品类");
		typesMap.put("02011", "网络购物家居类");
		typesMap.put("02012", "网络购物生活类");
		typesMap.put("02013", "网络购物食品类");
		typesMap.put("02014", "网络购物虚拟类");
		typesMap.put("02015", "网络购物机票类");
		typesMap.put("02016", "网络购物旅游类");
		typesMap.put("02017", "网络购物美容类");
		typesMap.put("02018", "网络购物数码类");
		typesMap.put("02019", "网络购物电器类");
		typesMap.put("02020", "网络购物文体类");
		typesMap.put("00100", "电费");
		typesMap.put("00200", "水暖费");
		typesMap.put("00300", "煤气费");
		typesMap.put("00400", "电话费");
		typesMap.put("00500", "通讯费");
		typesMap.put("00600", "保险费");
		typesMap.put("00700", "房屋管理费");
		typesMap.put("00800", "代理服务费");
		typesMap.put("00900", "学教费");
		typesMap.put("01000", "有线电视费");
		typesMap.put("01100", "企业管理费用");
		typesMap.put("01200", "薪金报酬");
		typesMap.put("09001", "其他");
		typesMap.put("00100", "电费");
		typesMap.put("00200", "水暖费");
		typesMap.put("00300", "煤气费");
		typesMap.put("00400", "电话费");
		typesMap.put("00500", "通讯费");
		typesMap.put("00600", "保险费");
		typesMap.put("00700", "房屋管理费");
		typesMap.put("00800", "代理服务费");
		typesMap.put("00900", "学教费");
		typesMap.put("01000", "有线电视费");
		typesMap.put("01100", "企业管理费用");
		typesMap.put("01200", "薪金报酬");
		typesMap.put("02025", "贷款还款房贷类");
		typesMap.put("02026", "贷款还款车贷类");
		typesMap.put("02027", "贷款还款信用卡类");
		typesMap.put("09001", "其他");
		for (String key : typesMap.keySet()) {

			if (key.equals(status)) {
				status = typesMap.get(key);
				break;
			}

		}
		return status;
	}

	/**
	 * 1.2.5 数据类型与中文对照表
	 */
	public static String dataConvert(String status) throws Exception {
		Map<String, String> datasMap = new HashMap<String, String>();

		datasMap.put("RJ01", "账号不存在");
		datasMap.put("RJ02", "账号、户名不符");
		datasMap.put("RJ03", "账户余额不足支付");
		datasMap.put("RJ04", "业务累计金额/笔数超过规定上限");
		datasMap.put("RJ05", "业务检查错");
		datasMap.put("RJ06", "指定协议不存在");
		datasMap.put("RJ07", "超过协议授权范围");
		datasMap.put("RJ08", "账户类型非法");
		datasMap.put("RJ09", "退票");
		datasMap.put("RJ10", "账户密码错误");
		datasMap.put("RJ11", "账户状态异常");
		datasMap.put("RJ12", "核验身份错误");
		datasMap.put("RJ13", "重复签约");
		datasMap.put("RJ19", "参与机构为非营业状态");
		datasMap.put("RJ20", "业务已撤销（冲正或止付）");
		datasMap.put("RJ21", "大、小写金额不符");
		datasMap.put("RJ22", "支票必须记载的事项不全");
		datasMap.put("RJ23", "出票人签章与预留银行签章不符");
		datasMap.put("RJ24", "约定使用支付密码的，支付密码未填写或错误");
		datasMap.put("RJ25", "持票人未作委托收款背书");
		datasMap.put("RJ26", "电子清算信息与支票影像不相符");
		datasMap.put("RJ27", "出票人账号、户名不符");
		datasMap.put("RJ28", "出票人账号余额不足以支付票据款项");
		datasMap.put("RJ29", "重复提示付款");
		datasMap.put("RJ30", "非本行票据");
		datasMap.put("RJ31", "出票人已销户");
		datasMap.put("RJ32", "出票人账户已依法冻结");
		datasMap.put("RJ33", "持票人已办理挂失止付或已收到法院止付通知书");
		datasMap.put("RJ34", "持票人开户行申请止付");
		datasMap.put("RJ35", "核数字签名错");
		datasMap.put("RJ90", "其他");
		datasMap.put("RJ91", "IBPS-NPC检查发起业务错");
		datasMap.put("RJ92", "付款清算行检查错拒绝");
		datasMap.put("RJ93", "IBPS-NPC检查付款清算行回执错拒绝");
		datasMap.put("RJ94", "轧差额度不足拒绝");
		datasMap.put("RJ95", "收款清算行检查错拒绝");
		datasMap.put("RJ96", "IBPS-NPC检查收款清算行回执错拒绝");
		datasMap.put("RJ97", "接收参与机构检查错拒绝");
		datasMap.put("RJ98", "IBPS-NPC检查接收参与机构回执错");
		datasMap.put("RJ99", "日终自动退回");
		datasMap.put("AC00", "协议方式");
		datasMap.put("AC01", "在线认证方式");
		datasMap.put("AC02", "动态密码方式");
		datasMap.put("CC00", "新增");
		datasMap.put("CC01", "变更");
		datasMap.put("CC02", "撤销");
		datasMap.put("MT00", "签订");
		datasMap.put("MT02", "撤销");
		datasMap.put("AT00", "单位银行结算账户");
		datasMap.put("AT01", "个人借记卡（存折）账户");
		datasMap.put("AT02", "个人贷记卡账户");
		datasMap.put("CM00", "日期");
		datasMap.put("CM01", "字符串");
		datasMap.put("CM02", "金额");
		datasMap.put("CM03", "数字");
		datasMap.put("CM04", "时间");
		datasMap.put("SAPS", "清算账户管理系统");
		datasMap.put("HVPS", "大额实时支付系统");
		datasMap.put("BEPS", "小额批量支付系统");
		datasMap.put("CCMS", "公共控制与管理系统");
		datasMap.put("PMIS", "支付管理信息系统");
		datasMap.put("IBPS", "网上支付跨行清算系统");
		datasMap.put("NCIS", "支票影像交换系统");
		datasMap.put("ECDS", "电子商业汇票系统");
		datasMap.put("CL00", "直接接入银行机构");
		datasMap.put("CL01", "直接接入非银行机构");
		datasMap.put("CL02", "代理接入银行机构");
		datasMap.put("TL01", "个人借记卡");
		datasMap.put("TL02", "个人贷记卡");
		datasMap.put("TL03", "单位银行结算账户");
		datasMap.put("TL04", "个人借记卡或贷记卡");
		datasMap.put("QT00", "查询账户余额");
		datasMap.put("QT01", "查询交易明细");
		datasMap.put("SR00", "发送");
		datasMap.put("SR01", "接收");
		datasMap.put("01", "启运");
		datasMap.put("02", "停运");
		datasMap.put("03", "维护");
		datasMap.put("10", "日间");
		datasMap.put("ST00", "设置故障");
		datasMap.put("ST01", "恢复运行");
		datasMap.put("ST02", "已登录");
		datasMap.put("ST03", "已退出");
		datasMap.put("EF00", "EF00-立即生效");
		datasMap.put("EF01", "EF01-指定日期生效");
		for (String key : datasMap.keySet()) {

			if (key.equals(status)) {
				status = datasMap.get(key);
				break;
			}

		}
		return status;

	}

	/**
	 * 判断对象是否Empty(null或元素为0)<br>
	 * 实用于对如下对象做判断:String Collection及其子类 Map及其子类
	 * 
	 * @param pObj
	 *            待检查对象
	 * @return boolean 返回的布尔值
	 */
	public static boolean isEmpty(Object pObj) {
		if (pObj == null)
			return true;
		if (pObj == "")
			return true;
		if (pObj instanceof String) {
			if (((String) pObj).length() == 0) {
				return true;
			}
		} else if (pObj instanceof Collection) {
			if (((Collection) pObj).size() == 0) {
				return true;
			}
		} else if (pObj instanceof Map) {
			if (((Map) pObj).size() == 0) {
				return true;
			}
		}
		return false;
	}

	/**
	 * 判断对象是否为NotEmpty(!null或元素>0)<br>
	 * 实用于对如下对象做判断:String Collection及其子类 Map及其子类
	 * 
	 * @param pObj
	 *            待检查对象
	 * @return boolean 返回的布尔值
	 */
	public static boolean isNotEmpty(Object pObj) {
		if (pObj == null)
			return false;
		if (pObj == "")
			return false;
		if (pObj instanceof String) {
			if (((String) pObj).length() == 0) {
				return false;
			}
		} else if (pObj instanceof Collection) {
			if (((Collection) pObj).size() == 0) {
				return false;
			}
		} else if (pObj instanceof Map) {
			if (((Map) pObj).size() == 0) {
				return false;
			}
		}
		return true;
	}

}
