<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=1
%>
<!--#include file="inc/header.asp"-->
    <link rel="stylesheet" href="xgwl/css/1.css"/>
    <style>
    .my-navbar,.leavetop.my-navbar{border-bottom:0;}
.ed1{    height: 560px;
        background-image: url("xgwl/img/1/bg01.png");
        background-size: cover;
        background-position: center top;
        position: relative;}
        .ed2{    height: 560px;
                background-image: url("xgwl/img/1/bg02.png");
                background-size: cover;
                background-position: center top;
                position: relative;}
                .ed3{    height: 560px;
                        background-image: url("xgwl/img/1/bg03.png");
                        background-size: cover;
                        background-position: center top;
                        position: relative;}
</style>
<!--广告部份-->
<div class="ed">
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>


        <div class="carousel-inner" role="listbox">


<%Set prs= Server.CreateObject("ADODB.Recordset")
                                psql="select top 3 * From [links] where wid=1 order by oid desc,ID desc"
                                prs.open psql,conn,1,1
                                i=0%>
                                <%do while not prs.eof%>
                                <div class="item <%if i=0 then%>active<%end if%> ed1" style=" background-image: url('<%=prs("file")%>');" >

                                            </div>
                         <%
                        	i=i+1
                        	     prs.movenext
                        	loop
                        prs.close
                        set prs=nothing
                        %>

        </div>


<!--        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>-->
    </div>
<!--    <div class="edtxt wow fadeInUp">
<img src="xgwl/img/edtit.svg">
    </div>-->
    <div class="searchbar"><ul class="TAB_CLICK" id=".searchint"><li class="on hand">找新房<i class="arrow-up"></i></li><li class="hand">个人委托<i class="arrow-up"></i></li></ul>
        <div class="searchint" style="display:block;"><input class="sint" value="华侨城苏河湾" type="text" id="skey"><button class="sbtn sxf" ><i class="mag"></i></button></div>
        <div class="searchint"><input class="sint" value="御品大厦" type="text"  id="okey"><button class="sbtn s2sf" ><i class="mag"></i></button></div>
    </div>
</div>
<!--part1-->
<div class="part1">
    <div class="container">
        <ul class="row">
            <li class="col-md-3 wow fadeInUp col-xs-6 hup">
            <i class="part1-ico part1-1 tra6 b_h tf360"><a href="newhouse.asp" class="ihref"></a></i>
            <h2>新房</h2><span class="txt">至臻首选 精品典藏</span>
            <a href="newhouse.asp" class="hidden-xs">更多 <em class="more-arr tra">&gt;</em></a>
            </li>
            
            
            <li class="col-md-3 wow fadeInUp col-xs-6"><i class="part1-ico part1-3 tra6 b_h tf360"><a href="news.asp" class="ihref"></a></i><h2>热点资讯</h2><span class="txt">最新资讯 专业洞察</span><a href="news.asp" class="hidden-xs">更多 <em class="more-arr tra">&gt;</em></a></li>
            <li class="col-md-3 wow fadeInUp col-xs-6"><i class="part1-ico part1-4 tra6 b_h tf360"><a href="life_judge.asp" class="ihref"></a></i><h2>生活·品鉴</h2><span class="txt">品质生活 经典传承</span><a href="life_judge.asp" class="hidden-xs">更多 <em class="more-arr tra">&gt;</em></a></li>
            <li class="col-md-3 wow fadeInUp col-xs-6">
            <i class="part1-ico part1-2 tra6 b_h tf360"><a href="entrust.asp" class="ihref"></a></i>
            <h2>个人委托</h2><span class="txt">权威意见 引领标杆</span>
            <a href="entrust.asp" class="hidden-xs">更多 <em class="more-arr tra">&gt;</em></a>
            </li>
        </ul>
    </div>
</div>
<!--part2-->
<div class="part2">
    <div class="container">
        <div class="row">
            <div class="titline"><div class="tit">新房 <img src="xgwl/img/bline.png" class="hidden-xs"></div><div class="txt hidden-xs">new house<br>权威意见树立豪宅标杆</div> <a href="newhouse.asp" class="more hidden-xs"> &gt;</a></div>
                        <%set rs=Server.CreateObject("ADODB.Recordset")
                        sql="select top 2 * from [Table_Product] where Passed=true and elite=true and ckfsid='2' order by orderid desc,articleid desc"
                        rs.Open sql,conn,1,1
                        do while not rs.eof %>
            <div class="col-md-6 wow fadeInUp">
             <div class="bborder b_c tra" onclick="location='housedetails.asp?id=<%=rs("articleid")%>'">
            <img src="<%=rs("defaultpicurl")%>"><span class="tit"><%=rs("title")%></span><span class="txt"><%=left(RemoveHTML(rs("content1")),30)%>……</span>
            </div>
            </div>
            <%rs.movenext
              i=i+1
              loop%>
<!--            <div class="col-md-6 wow fadeInUp">
                <div class="bborder b_c tra" onclick="location='6.asp'">
                <img src="xgwl/img/temp/p2.jpg"><span class="tit">凯旋滨江园</span><span class="txt">来自何方，无碍傲立何处。小面积全配高区户型，不限购菁英景观私寓</span>
                </div>
                </div>-->
        </div>
    </div>
</div>
<!--part3-->
<div class="part3">
    <div class="container">
        <div class="row">
<div class="titline"><div class="tit tit2">个人委托<img src="xgwl/img/bline.png" class="hidden-xs"></div><div class="txt hidden-xs">Second-hand housing<br>为懂生活的你臻选精品佳作</div> <a href="entrust.asp" class="more hidden-xs"> &gt;</a></div>
<%set rs=Server.CreateObject("ADODB.Recordset")
                        sql="select top 3 * from [Table_Product] where Passed=true and elite=true and ckfsid='1' order by orderid desc,articleid desc"
                        rs.Open sql,conn,1,1
                        do while not rs.eof %>
<div class="col-md-4 wow fadeInUp">
    <div class="bborder b_c tra" onclick="location='housedetails.asp?id=<%=rs("articleid")%>'">
    <img src="<%=rs("defaultpicurl")%>" class="tra6"><span class="tit"><%=rs("title")%></span><span class="txt"><%=left(RemoveHTML(rs("content1")),25)%>……</span>
</div>
</div>
<%rs.movenext
              i=i+1
              loop%>


        </div>
    </div>
</div>
<!--part4-->
<div class="part4">
    <div class="container">
        <div class="row">
<div class="titline"><div class="tit tit3">热点资讯 <img src="xgwl/img/bline.png" class="hidden-xs"></div><div class="txt hidden-xs">news<br>专业洞察把握行业脉搏</div> <a href="2.asp" class="more hidden-xs"> &gt;</a></div>
<%
set rsnew=Server.CreateObject("ADODB.Recordset")
sqlnew="select top 3 * from [prod] where classid=15 order by oid desc,prod_id desc"
'and elite=true 
rsnew.Open sqlnew,conn,1,1
i=1
do while not rsnew.eof 
%>
<a class="n<%=i%> b_h wow fadeInUp" href="newsdetail.asp?id=<%=rsnew("prod_id")%>"><img src="<%if rsnew("prod_pic")="" then%>xgwl/img/temp/p6.jpg<%else%><%=rsnew("prod_pic")%><%end if%>" class="tra6"><span class="tit"><%=rsnew("prod_name")%></span></a>
<%
rsnew.movenext
              i=i+1
              loop
rsnew.close
  set rsnew=nothing%>
        </div>
    </div>
</div>
<!--#include file="inc/footer.asp"-->
<script>
$(document).ready(function(){
    $(".navbar-brand img").attr("src","xgwl/img/logo.svg");
})
//搜索时input鼠标按下抬起效果

input("#skey");
input("#okey");
function input(v){
    var n = $(v);
    var val=n.val();
    n.focus(function(){
        if(n.val()==val){
            $(this).val('');
            $(this).css("color","#000");
        }
    }).blur(function(){
        if (n.val()==""){
            $(this).val(val);
            $(this).css("color","#4d4d4d");
        }
    })
};
</script>