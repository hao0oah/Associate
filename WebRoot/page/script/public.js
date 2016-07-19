/**
 * public.js
 */
//var FINGURE_PORT = 3;
//var PASSWD_BORD_PORT = 1;
//var CARD_READER_PORT = 2;
/**
$(function() {
	// 加载菜单
	$(".navBarDiv").load("navBar");

	// 进度条
	var progressbar = $("#progressbar"), progressLabel = $(".progress-label");

	progressbar.progressbar({
		value : false,
		change : function() {
			progressLabel.text(progressbar.progressbar("value") + "%");
		}
	});

	// 金额字段
	$(".amount").blur(function() {
		var amount = $(this).val();
		if (amount.length > 0) {
			$(this).val($.formatAmount(amount));
		}

	});

	// 所有字段禁用复制、粘贴、剪切
	$(".founder_TextNo").bind("copy cut paste", function(e) {
		return false;
	});

});
**/
/**进度条
function progress() {
	var progressbar = $("#progressbar"), progressLabel = $(".progress-label");

	var val = progressbar.progressbar("value") || 0;

	progressbar.progressbar("value", val + 2);

	if (val < 99) {
		setTimeout(progress, 80);
	}
}
**/
/*加载流水号和支付序号*/
function loadFlowNoAndSerialNo() {
	var url = "getFlowNoAndSerialNo" + "?random=" + Math.random();

	$.ajax({
		type : "GET",
		url : url,
		dataType : "JSON",
		success : loadFlowNoAndSerialNoBack
	});
}

/*加载流水号和支付序号*/
function loadFlowNoAndSerialNoBack(data) {
	var returnCode = data.returnCode;
	var returnMsg = data.returnMessage;

	if (returnCode == "SUCCESS") {
		var obj = data.obj;
		var flowNo = obj.flowNo;
		var serialNo = obj.serialNo;

		$(".flowNo").val(flowNo);
		$(".serialNo").val(serialNo);
	} else {
		// 获取流水号和支付序号错误
		alert("系统错误,取流水号和支付序号失败" + returnMsg + "请联系系统管理员");
	}
}

// 将json中数据放入form
function putJsonValueToForm(jsonObj, fromId) {
	for ( var key in jsonObj) {
		var value = jsonObj[key];
		$("#" + fromId + " input[name='" + key + "']").val(value);
	}
}

/**jquery插件
(function($) {
	//序列化表单为json对象
	$.fn.serializeJson = function() {
		var serializeObj = {};
		var array = this.serializeArray();
		$(array).each(
				function() {
					if (serializeObj[this.name]) {
						if ($.isArray(serializeObj[this.name])) {
							serializeObj[this.name].push(this.value);
						} else {
							serializeObj[this.name] = [
									serializeObj[this.name], this.value ];
						}
					} else {
						serializeObj[this.name] = this.value;
					}
				});
		return serializeObj;
	};

	//select对象加载json数据
	$.fn.selectJsonData = function(data) {
		var selectDom = $(this);
		$.each(data, function(index) {
			var item = data[index];
			var value = item.value;
			var text = item.text;

			var option = "<option value='" + value + "'>" + text + "</option>";

			// 添加到select
			selectDom.append(option);
		});

		return false;
	};
	//金额格式化
	$.extend({
		formatAmount : function(s) {
			s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(2) + "";
			var l = s.split(".")[0].split("").reverse(), r = s.split(".")[1];
			t = "";
			for (var i = 0; i < l.length; i++) {
				t += l[i]
						+ ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");
			}
			return t.split("").reverse().join("") + "." + r;
		}
	});
	$.extend({
		unformatAmount : function(s) {
			return parseFloat(s.replace(/[^\d\.-]/g, ""));
		}
	});
})(jQuery);
**/

/**
 * 检查元素值非空
 */
function checkNullData(domId) {
	return $.trim($(domId).val()).length > 0;
}

/**
 * 将空字符串，未定义字符串及空白字符串转成*
 */
function handleNullStr(str) {
	if(str == null)
		return "*";
	else if(typeof(str) == "undefined")
		return "*";
	else if(str.trim() == "")
		return "*";
	else return str;
}

/*在表格中显示数据*/
function showDateInRow(dataList) {
	var row = $("<tr></tr>");

	for ( var i in dataList) {
		var cell = $("<td></td>");
		cell.append(dataList[i]);
		cell.appendTo(row);
	}

	return row;
}

/*获取当前日期 格式yyyymmdd*/
function getTodayDate() {
	var today = new Date();
	var year = today.getFullYear() + "";
	var month = (today.getMonth() + 1) + "";
	if (month.length == 1) {
		month = "0" + month;
	}
	var date = today.getDate() + "";
	if (date.length == 1) {
		date = "0" + date;
	}

	return year + month + date;
}

// 城商行支付交易码翻译
function translateCCBTransCode(transCode) {

	var transCodeShow = "";
	if (transCode == "0100001") {
		transCodeShow = "普通汇兑业务";
	}
	if (transCode == "0100002") {
		transCodeShow = "转账贷记业务";
	}
	if (transCode == "0100003") {
		transCodeShow = "退汇业务";
	}
	if (transCode == "0100500") {
		transCodeShow = "退回申请";
	}
	if (transCode == "0100501") {
		transCodeShow = "退回申请回复";
	}
	if (transCode == "0100502") {
		transCodeShow = "查询业务";
	}
	if (transCode == "0100503") {
		transCodeShow = "查复业务";
	}
	if (transCode == "0100504") {
		transCodeShow = "撤销业务";
	}
	if (transCode == "0200001") {
		transCodeShow = "密码汇款汇出业务";
	}
	if (transCode == "0200100") {
		transCodeShow = "密码汇款支取业务";
	}
	if (transCode == "0200101") {
		transCodeShow = "密码汇款退汇业务";
	}
	if (transCode == "1000001") {
		transCodeShow = "个人通存业务";
	}
	if (transCode == "1000002") {
		transCodeShow = "公司通存业务";
	}
	if (transCode == "1000100") {
		transCodeShow = "个人通兑业务";
	}
	if (transCode == "1000501") {
		transCodeShow = "个人账户余额查询业务";
	}
	if (transCode == "1000502") {
		transCodeShow = "个人账户交易明细查询业务";
	}
	if (transCode == "1000503") {
		transCodeShow = "冲正业务";
	}
	if (transCode == "1000504") {
		transCodeShow = "账户有效性查询";
	}
	if (transCode == "9900500") {
		transCodeShow = "日切通知";
	}
	if (transCode == "9900501") {
		transCodeShow = "同步收妥回执";
	}
	if (transCode == "9900502") {
		transCodeShow = "异步回执";
	}
	if (transCode == "9900512") {
		transCodeShow = "实时业务异常回执";
	}
	if (transCode == "9900503") {
		transCodeShow = "头寸预警通知";
	}
	if (transCode == "9900505") {
		transCodeShow = "中心退回";
	}
	if (transCode == "9900506") {
		transCodeShow = "公共信息下发通知";
	}
	if (transCode == "9900507") {
		transCodeShow = "汇总对账通知";
	}
	if (transCode == "9900508") {
		transCodeShow = "重发汇总对账文件请求";
	}
	if (transCode == "9900509") {
		transCodeShow = "自由格式报文";
	}
	if (transCode == "9900510") {
		transCodeShow = "支付业务状态查询";
	}
	if (transCode == "9900511") {
		transCodeShow = "清算账户余额通知";
	}
	if (transCode == "9900520") {
		transCodeShow = "清算账户资金电子划回";
	}
	if (transCode == "9900599") {
		transCodeShow = "通用通知";
	}
	if (transCode == "0000001") {
		transCodeShow = "CMGR日切";
	}
	if (transCode == "0000002") {
		transCodeShow = "CMGR开户";
	}
	if (transCode == "0000003") {
		transCodeShow = "CMGR销户";
	}
	if (transCode == "0000004") {
		transCodeShow = "CMGR记账";
	}
	if (transCode == "0000005") {
		transCodeShow = "CMGR复核";
	}
	if (transCode == "0000006") {
		transCodeShow = "FMGR行名行号申报";
	}
	if (transCode == "0000007") {
		transCodeShow = "FMGR排队查询";
	}
	if (transCode == "0000008") {
		transCodeShow = "FMGR排队队列顺序调整";
	}
	if (transCode == "0000009") {
		transCodeShow = "IC业务日终";
	}
	if (transCode == "0000010") {
		transCodeShow = "SAM账务日终";
	}
	if (transCode == "1100001") {
		transCodeShow = "实时代付业务";
	}
	if (transCode == "1100101") {
		transCodeShow = "实时代收业务";
	}
	if (transCode == "1100501") {
		transCodeShow = "交易状态查询";
	}
	if (transCode == "1100502") {
		transCodeShow = "清算账户余额查询";
	}
	if (transCode == "1100503") {
		transCodeShow = "签约业务";
	}
	if (transCode == "1100511") {
		transCodeShow = "批量交易状态查询请求";
	}
	if (transCode == "1100512") {
		transCodeShow = "批量交易状态查询回执";
	}
	if (transCode == "1100513") {
		transCodeShow = "通讯检查";
	}
	if (transCode == "0010020") {
		transCodeShow = "签到签退";
	}
	if (transCode == "0005004") {
		transCodeShow = "清算账户金额类查询";
	}
	if (transCode == "0003004") {
		transCodeShow = "队列查询";
	}
	if (transCode == "0010021") {
		transCodeShow = "队列调整";
	}
	if (transCode == "0010022") {
		transCodeShow = "中心强制签退";
	}
	if (transCode == "0003009") {
		transCodeShow = "设置头寸预警值";
	}

	return transCodeShow;
}

/*城商行支付交易状态翻译*/
function translateCCBStatus(status) {
	var statusShow = "";
	if (status == "0" || status - 0 == 0) {
		statusShow = "成功";
	}
	;
	if (status == "1" || status - 1 == 0) {
		statusShow = "录入提交";
	}
	;
	if (status == "2" || status - 2 == 0) {
		statusShow = "已录入";
	}
	;
	if (status == "3" || status - 3 == 0) {
		statusShow = "录入失败";
	}
	;
	if (status == "4" || status - 4 == 0) {
		statusShow = "复核提交";
	}
	;
	if (status == "5" || status - 5 == 0) {
		statusShow = "已复核";
	}
	;
	if (status == "6" || status - 6 == 0) {
		statusShow = "复核拒绝";
	}
	;
	if (status == "7" || status - 7 == 0) {
		statusShow = "复核失败";
	}
	;
	if (status == "8" || status - 8 == 0) {
		statusShow = "发送提交";
	}
	;
	if (status == "9" || status - 9 == 0) {
		statusShow = "发送拒绝";
	}
	;
	if (status == "A") {
		statusShow = "发送失败";
	}
	;
	if (status == "B") {
		statusShow = "需要主管授权";
	}
	;
	if (status == "C") {
		statusShow = "抹账提交";
	}
	;
	if (status == "D") {
		statusShow = "已抹账";
	}
	;
	return statusShow;
}

/*计算普通汇兑业务手续费
 amount : 交易金额
 acctType : 账户类型  PERSON 对私  ENTERPRISE 对公

 return : fee 手续费
 */
function calculateFee(amount, acctType) {
	amount = $.unformatAmount(amount);
	// 对私账户
	if (acctType == "PERSON") {
		//0.2万元以下(含0.2万元)，收费2元
		if (amount - 2000 <= 0) {
			return 2;
		}
		// 0.2万—0.5万元(含0.5万元)，每笔收费5元
		if (amount - 2000 > 0 && amount - 5000 <= 0) {
			return 5;
		}
		//0.5万—1万元(含1万元)，每笔收费10元
		if (amount - 5000 > 0 && amount - 10000 <= 0) {
			return 10;
		}
		// 1万—5万元(含5万元)每笔收费15元
		if (amount - 10000 > 0 && amount - 50000 <= 0) {
			return 15;
		}
		//5万元以上，每笔按汇款金额的0.03%收取,最高收费50元
		if (amount - 50000 > 0) {
			var fee = amount * 3 / 10000;
			if (fee - 50 > 0) {
				fee = 50;
			}
			return fee;
		}
	}
	// 对公账户
	if (acctType == "ENTERPRISE") {
		// 每笔1万元以下(含1万元)，收费5元
		if (amount - 10000 <= 0) {
			return 5;
		}
		// 1万—10万元(含10万元)，每笔收费10元
		if (amount - 10000 > 0 && amount - 100000 <= 0) {
			return 10;
		}
		;
		// 10万—50万元(含50万元)，每笔收费15元
		if (amount - 100000 > 0 && amount - 500000 <= 0) {
			return 15;
		}
		// 50万—100万元(含100万元)，每笔收费20元
		if (amount - 500000 > 0 && amount - 1000000 <= 0) {
			return 20;
		}
		// 100万元以上，每笔按汇款金额的0.002%收取,最高收费200元
		if (amount - 1000000 > 0) {
			var fee = amount * 2 / 100000;
			if (fee - 200 > 0) {
				fee = 200;
			}
			return fee;
		}
	}

	return 0;
}
/*
 * 数字金额格式化
 * 12345格式化为12,345.00 
 * 12345.6格式化为12,345.60 
 * 12345.67格式化为 12,345.67 
 * 只留两位小数。 
 * */
function fmoney(s, n)   
{   
    if (typeof(s) == "undefined") { 
    	s = "*";
    }
	if(s=='*' || s==''){
	   return "*";
   }
   n = n > 0 && n <= 20 ? n : 2;   
   s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + "";   
   var l = s.split(".")[0].split("").reverse(),   
   r = s.split(".")[1];   
   t = "";   
   for(i = 0; i < l.length; i ++ )   
   {   
      t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");   
   }   
   return t.split("").reverse().join("") + "." + r;   
} 

/*金额转换成大写
 num : 金额
 return： 大写金额
 */
function translateAmount(currencyDigits) {
	// Constants: 
	var MAXIMUM_NUMBER = 99999999999.99;
	// Predefine the radix characters and currency symbols for output: 
	var CN_ZERO = "零";
	var CN_ONE = "壹";
	var CN_TWO = "贰";
	var CN_THREE = "叁";
	var CN_FOUR = "肆";
	var CN_FIVE = "伍";
	var CN_SIX = "陆";
	var CN_SEVEN = "柒";
	var CN_EIGHT = "捌";
	var CN_NINE = "玖";
	var CN_TEN = "拾";
	var CN_HUNDRED = "佰";
	var CN_THOUSAND = "仟";
	var CN_TEN_THOUSAND = "万";
	var CN_HUNDRED_MILLION = "亿";
	var CN_SYMBOL = "";
	var CN_DOLLAR = "元";
	var CN_TEN_CENT = "角";
	var CN_CENT = "分";
	var CN_INTEGER = "整";

	// Variables: 
	var integral; // Represent integral part of digit number. 
	var decimal; // Represent decimal part of digit number. 
	var outputCharacters; // The output result. 
	var parts;
	var digits, radices, bigRadices, decimals;
	var zeroCount;
	var i, p, d;
	var quotient, modulus;

	// Validate input string: 
	if (currencyDigits == null){
//		alert("金额为空！");
		return "";
	}
	currencyDigits = currencyDigits.toString();
	if (currencyDigits == "") {
//		alert("请输入金额！");
		return "";
	}
	if (currencyDigits.match(/[^,.\d]/) != null) {
		alert("金额中含有无效字符！");
		return "";
	}
	if ((currencyDigits)
			.match(/^((\d{1,3}(,\d{3})*(.((\d{3},)*\d{1,3}))?)|(\d+(.\d+)?))$/) == null) {
		alert("金额的格式不正确！");
		return "";
	}

	// Normalize the format of input digits: 
	currencyDigits = currencyDigits.replace(/,/g, ""); // Remove comma delimiters. 
	currencyDigits = currencyDigits.replace(/^0+/, ""); // Trim zeros at the beginning. 
	// Assert the number is not greater than the maximum number. 
	if (Number(currencyDigits) > MAXIMUM_NUMBER) {
		alert("金额过大，应小于1000亿元！");
		return "";
	}

	// Process the coversion from currency digits to characters: 
	// Separate integral and decimal parts before processing coversion: 
	parts = currencyDigits.split(".");
	if (parts.length > 1) {
		integral = parts[0];
		decimal = parts[1];
		// Cut down redundant decimal digits that are after the second. 
		decimal = decimal.substr(0, 2);
	} else {
		integral = parts[0];
		decimal = "";
	}
	// Prepare the characters corresponding to the digits: 
	digits = new Array(CN_ZERO, CN_ONE, CN_TWO, CN_THREE, CN_FOUR, CN_FIVE,
			CN_SIX, CN_SEVEN, CN_EIGHT, CN_NINE);
	radices = new Array("", CN_TEN, CN_HUNDRED, CN_THOUSAND);
	bigRadices = new Array("", CN_TEN_THOUSAND, CN_HUNDRED_MILLION);
	decimals = new Array(CN_TEN_CENT, CN_CENT);
	// Start processing: 
	outputCharacters = "";
	// Process integral part if it is larger than 0: 
	if (Number(integral) > 0) {
		zeroCount = 0;
		for (i = 0; i < integral.length; i++) {
			p = integral.length - i - 1;
			d = integral.substr(i, 1);
			quotient = p / 4;
			modulus = p % 4;
			if (d == "0") {
				zeroCount++;
			} else {
				if (zeroCount > 0) {
					outputCharacters += digits[0];
				}
				zeroCount = 0;
				outputCharacters += digits[Number(d)] + radices[modulus];
			}
			if (modulus == 0 && zeroCount < 4) {
				outputCharacters += bigRadices[quotient];
				zeroCount = 0;
			}
		}
		outputCharacters += CN_DOLLAR;
	}
	// Process decimal part if there is: 
	if (decimal != "") {
		for (i = 0; i < decimal.length; i++) {
			d = decimal.substr(i, 1);
			if (d != "0") {
				outputCharacters += digits[Number(d)] + decimals[i];
			}
		}
	}
	// Confirm and return the final output string: 
	if (outputCharacters == "") {
		outputCharacters = CN_ZERO + CN_DOLLAR;
	}
	if (decimal == "") {
		outputCharacters += CN_INTEGER;
	}
	outputCharacters = CN_SYMBOL + outputCharacters;
	return outputCharacters;
}

/**
 * 校验规则 : 只能输入数字和字符

$.validator.addMethod("digitsAndChar", function(value, element) {
	// value 是元素的值，element 是元素本身，param 是参数
	value = $.trim(value); // 去除前后的空格
	if (value.length == 0) {
		return true;
	}

	var regex = "^[A-Za-z0-9]+$";
	var r = value.match(regex);
	return r != null;

}, "只能输入数字和字符");
 */
/**
 * 校验规则 校验文件格式，只能输入指定格式的文件

$.validator.addMethod("fileExtension", function(value, element, params) {
	var extension = value.split(".")[1];
	if (extension == null) {
		return false;
	}
	if (params.indexOf(extension) != -1) {
		return true;
	} else {
		return false;
	}

}, "文件格式不正确");
 */
/**
 * 校验规则，只能输入规定的长度

$.validator.addMethod("fixLength", function(value, element, params) {
	var length = value.length;
	if (length == params || length - 0 == 0) {
		return true;
	}
	return false;

}, "只能输入规定的长度");
 */
/**
 * 校验规则，日期不能大于当前日期

$.validator.addMethod("dateValueCheck", function(value, elements) {
	// 格式化日期值
	if (value == null) {
		return true;
	}
	var _date = value.substring(0, 4) + "/" + value.substring(4, 6) + "/"
			+ value.substring(6, 8);
	var date = new Date(_date);
	var now = new Date();
	if (date > now) {
		return false;
	}
	return true;

}, "日期值错误");
 */
/**
 * 校验规则，只能输入汉字

$.validator.addMethod("chineseSimple", function(value, elements) {
	if (value == null) {
		return true;
	}

	var regex = "^[\u4e00-\u9fa5]+$";
	value = $.trim(value); // 去除前后的空格
	var r = value.match(regex);
	return r != null;
}, "只能输入简体中文汉字");
 */
/**
 * 校验规则，只能输入汉字、数字和字母

$.validator.addMethod("characterAndSymbol", function(value, elements) {
	if (value == null) {
		return true;
	}

	var regex = "^[\u4e00-\u9fa5A-Za-z0-9]+$";
	value = $.trim(value); // 去除前后的空格
	var r = value.match(regex);
	return r != null;
}, "只能输入汉字、数字和字母");
 */
// 字符串trim()方法
String.prototype.trim = function() {
    return this.replace(/^\s+|\s+$/g,"");
};
String.prototype.ltrim = function() {
    return this.replace(/^\s+/,"");
};
String.prototype.rtrim = function() {
    return this.replace(/\s+$/,"");
};