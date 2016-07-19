/**
 * DepositAccountQuery.js
 */
$(function() {
    
    // 查询按钮
    $("#querySubmit").click(function() {
    	queryDepositAccount(1);
    });
    
    //首页按钮
    $("#startpage").click(function(){
    	var curpage = $('#currentPage').text();
    	//当前不是第一页则查询
    	if(curpage != 1)	
    		queryDepositAccount(1);
    });
    
    //上一页按钮
    $("#prevpage").click(function(){
    	var curpage = $('#currentPage').text();
    	
    	if(curpage == null || curpage == ""){
    		return;
    	}
    	
    	curpage = parseInt(curpage);
    	if(curpage == 0 || curpage-1 <= 0){
    		return;
    	}
    	queryDepositAccount(curpage-1);
    });
    
    //下一页按钮
    $("#nextpage").click(function(){
    	var curpage = $('#currentPage').text();
    	var talpage = $('#totalPage').text();
    	
    	if(curpage == null || curpage == "" || curpage == 0){
    		return;
    	}
    	
    	curpage = parseInt(curpage);
    	talpage = parseInt(talpage);
    	
    	if(curpage+1>talpage) return;
    	
    	queryDepositAccount(curpage+1);
    });
    
    //尾页按钮
    $("#endpage").click(function(){
    	var talpage = $('#totalPage').text();
    	
    	if(talpage==null || talpage=="" || talpage==0){
    		return;
    	}
    	
    	talpage = parseInt(talpage);
    	queryDepositAccount(talpage);
    });
    
    //跳转到指定页按钮
    $("#gopage").click(function(){
    	var currPage = $('#currPage').val();
    	var talpage = $('#totalPage').text();
    	
    	if(currPage == null || currPage == "")
    		return;
    	
    	currPage = parseInt(currPage);
    	talpage = parseInt(talpage);
    	
    	if(currPage>0 && currPage<talpage)
    		queryDepositAccount(currPage);
    });
});

// 分页查询贷款人信息
function queryDepositAccount(pagenum) {
	var data = {};
	var bean = {};
    bean.acct_no = $("#acct_no").val();
    bean.cust_id = $("#cust_id").val();
    data.bean = bean;
    data.currentPage = pagenum;
    
    $.ajax({
        type: "POST",
        url: "getDepositAcntByPage.do",
        data: JSON.stringify(data),
        dataType: "JSON",
        contentType : "application/json",
        success: queryDepositAccountCallBack
    });
}

// 分页查询贷款人信息反调函数
function queryDepositAccountCallBack(data) {
	//由JSON字符串转换为JSON对象
	//var obj = eval('(' + date + ')');
	//var obj = JSON.parse(data);
	//var obj = data.parseJSON();
	var obj = data;

	// 清除表格数据
    var table = $("#TableData");
    table.empty();
    //table.html("");
	
    if (!obj.status) {
        alert(data.msg);
        return false;
    }
   
    var returnData = obj.entity;
    var count = returnData.count;
    var totalPage = returnData.totalPages;
    var currentPage = returnData.currentPage;
    var pageSize = returnData.pageSize;
    
    $("#count").text(count);
    $("#totalPage").text(totalPage);
    $("#currentPage").text(currentPage);
    $("#pageSize").text(pageSize);

    var dataList = returnData.beanList;
    $(dataList).each(function(index) {
        var item = dataList[index];

        var acct_name = item.acct_name;
        var cust_id = item.cust_id;
        var acct_no = item.acct_no;
        var voucher_no = item.voucher_no;
        var acct_open_date = item.acct_open_date;
        var maturity_date = item.maturity_date;
        var actual_bal = item.actual_bal;
        
        var deal = "<a  onclick='detail("+JSON.stringify(item)+");'>查看详细</a>";

        var dataArray = new Array(index+1,acct_name,cust_id,acct_no,voucher_no,acct_open_date,maturity_date,actual_bal,deal);
        var row = showDateInRow(dataArray);

        row.appendTo(table);
    });
    
}

//查看用户详细信息页面
function detail(data){
	self.location="DepositAcntDetail.jsp?"+JSON.stringify(data);
}

