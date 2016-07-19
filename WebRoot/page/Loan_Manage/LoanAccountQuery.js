/**
 * LoanAccountQuery.js
 */
$(function() {
    
    // 查询按钮
    $("#querySubmit").click(function() {
    	queryLoanAccount(1);
    });
    
    //首页按钮
    $("#startpage").click(function(){
    	var curpage = $('#currentPage').text();
    	//当前不是第一页则查询
    	if(curpage != 1)	
    		queryLoanAccount(1);
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
    	queryLoanAccount(curpage-1);
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
    	
    	queryLoanAccount(curpage+1);
    });
    
    //尾页按钮
    $("#endpage").click(function(){
    	var talpage = $('#totalPage').text();
    	
    	if(talpage==null || talpage=="" || talpage==0){
    		return;
    	}
    	
    	talpage = parseInt(talpage);
    	queryLoanAccount(talpage);
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
    		queryLoanAccount(currPage);
    });
});

// 分页查询贷款人信息
function queryLoanAccount(pagenum) {
	var data = {};
	var bean = {};
    bean.loan_no = $("#loan_no").val().trim();
    bean.borrower = $("#borrower").val().trim();
    bean.mature_date = $("#mature_date").val().trim();

    data.bean = bean;
    data.currentPage = pagenum;
    
    $.ajax({
        type: "POST",
        url: "getLoanAcntByPage.do",
        data: JSON.stringify(data),
        dataType: "JSON",
        contentType : "application/json",
        success: queryLoanAccountCallBack
    });
}

// 分页查询贷款人信息反调函数
function queryLoanAccountCallBack(data) {
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

        var loan_no = item.loan_no;
        var borrower = item.borrower;
        var cmisloan_no = item.cmisloan_no;
        var contract = item.contract;
        var start_date = item.start_date;
        var mature_date = item.mature_date;
        var loan_amt = item.loan_amt;
        
        var deal = "<a  onclick='detail("+JSON.stringify(item)+");'>查看详细</a>";

        var dataArray = new Array(index+1,loan_no,borrower,cmisloan_no,contract,start_date,mature_date,loan_amt,deal);
        var row = showDateInRow(dataArray);

        row.appendTo(table);
    });
    
}

//查看用户详细信息页面
function detail(data){
	self.location="LoanAcntDetail.jsp?"+JSON.stringify(data);
}

