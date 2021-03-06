<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dao.*" %>
<%@ page import="com.entity.*" %><%--
  Created by IntelliJ IDEA.
  User: qiuje
  Date: 2017/9/4
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>租房</title>
    <%--搜索条件筛选--%>
    <link rel="stylesheet" type="text/css" href="../../css/style.css">
    <script type="text/javascript" src="../../js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../js/script.js"></script>
    <%--搜索条件筛选--%>
    <link href="../../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../../js/jquery-1.11.0.min.js"></script>
    <!-- Custom Theme files -->
    <link href="../../css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <meta name="keywords" content="Auction Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <!--Google Fonts-->
    <link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script src="http://ajax.useso.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="../../js/move-top.js"></script>
    <script type="text/javascript" src="../../js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
</head>

<body>
<!-- //end-smoth-scrolling -->
<!--header start here-->
<div class="header">
    <div class="container">
        <div class="header-main">
            <div class="logo">
                <a href="index.html"> <img src="../../images/logo.png" alt="" title=""/> </a>
            </div>
            <div class="head-right">
                <div class="top-nav">
                    <span class="menu"> <img src="../../images/icon.png" alt=""/></span>
                    <ul class="res">
                        <li><a href="../homePage.jsp">首页</a></li>
                        <li><a href="../building/building.jsp">楼盘</a></li>
                        <li><a class="active" href="rentHouse.jsp">租房</a></li>
                        <li><a href="../redecorated/redecorated.jsp">装修</a></li>
                        <li><a href="../comment/forum.jsp">论坛</a></li>
                        <div class="clearfix"> </div>
                    </ul>
                    <!-- script-for-menu -->
                    <script>
                        $( "span.menu" ).click(function() {
                            $( "ul.res" ).slideToggle( 300, function() {
                                // Animation complete.
                            });
                        });
                    </script>
                    <!-- /script-for-menu -->
                </div>
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form>
                            <input class="sb-search-input" placeholder="Search" type="search" name="search" id="search">
                            <input class="sb-search-submit" type="submit" value="">
                            <span class="sb-icon-search"> </span>
                        </form>
                    </div>
                </div>
                <div class="clearfix"> </div>
                <!-- search-scripts -->
                <script src="../../js/classie.js"></script>
                <script src="../../js/uisearch.js"></script>
                <script>
                    new UISearch( document.getElementById( 'sb-search' ) );
                </script>
                <!-- //search-scripts -->
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--header end here-->
<!--renthouse start here-->

<div class="demo">
    <div class="sx">
        <span>分类1：</span>
        <a rel="1" class="sx_child" name="aaa" href="javascript:;">阿迪达斯</a>
        <a rel="2" class="sx_child" name="aaa" href="javascript:;">李宁</a>
        <a rel="3" class="sx_child" name="aaa" href="javascript:;">耐克</a>
        <a rel="4" class="sx_child" name="aaa" href="javascript:;">乔丹</a>
    </div>
    <div class="sx">
        <span>分类2：</span>
        <a rel="1" class="sx_child" name="bbb" href="javascript:;">福建</a>
        <a rel="2" class="sx_child" name="bbb" href="javascript:;">广州</a>
        <a rel="3" class="sx_child" name="bbb" href="javascript:;">上海</a>
        <a rel="4" class="sx_child" name="bbb" href="javascript:;">北京</a>
    </div>
    <div class="sx">
        <span>分类3：</span>
        <a rel="1" class="sx_child" name="ccc" href="javascript:;">红色</a>
        <a rel="2" class="sx_child" name="ccc" href="javascript:;">绿色</a>
        <a rel="3" class="sx_child" name="ccc" href="javascript:;">黑色</a>
        <a rel="4" class="sx_child" name="ccc" href="javascript:;">白色</a>
    </div>
    <div class="sx">
        <span>分类4：</span>
        <a rel="1" class="sx_child" name="ddd" href="javascript:;">100</a>
        <a rel="2" class="sx_child" name="ddd" href="javascript:;">300</a>
        <a rel="3" class="sx_child" name="ddd" href="javascript:;">400</a>
        <a rel="4" class="sx_child" name="ddd" href="javascript:;">600</a>
    </div>
    <div class="zj">
        <span>删选结果：</span>
        <p class="qcqb">清除全部</p>
    </div>
</div>
<script type="text/javascript" src="../../js/script.js"></script>
<script type="text/javascript">
    $('.sx').sx({
        nuv:".zj",//筛选结果
        zi:"sx_child",//所有筛选范围内的子类
        qingchu:'.qcqb',//清除全部
        over:'on'//选中状态样式名称
    });
</script>
<!--renthouse end here-->

<!--renthouse_info start here-->
<h1>房源展示</h1>
<hr>

<!--services start here-->
<div class="services">
    <div class="container">
        <div class="services-main">
            <div class="services-bottom">
                <!-- 商品循环开始 -->
                <%
                    RentHouseDao renthouseDao = new RentHouseDao();
                    ArrayList<RentHouse> list = renthouseDao.getAllRentHouse();
                    if(list!=null&&list.size()>0)
                    {
                        for(int j=0;j<2;j++)
                        {
                %>
                <div class="row">
                    <%
                        for(int i=j*3;i<list.size()&&i<3*(j+1);i++)
                        {
                            RentHouse RHouse=list.get(i);
                            RentHouseImageDao RHIDao = new RentHouseImageDao();
                            ArrayList<RentHouseImage> RHimage=RHIDao.getAllRentHouseImageNameByRentHouseId(RHouse.getRentHouseId());
                            if(0<RHimage.size()){
                                RentHouseImage rhimage=RHimage.get(0);
                    %>
                    <div class="col-sm-6 col-md-4 ser">
                        <div class="thumbnail">
                            <a href="rentHouseDetails.jsp?id=<%=RHouse.getRentHouseId()%>"><img src="../../images/<%=rhimage.getRentHouseImageName()%>" alt="图片无法显示"/></a>
                            <div class="caption">
                                <a> <h3><%=RHouse.getRentHouseName() %></h3></a>
                                <p><%=RHouse.getRentHousePrice()%>元/月</p>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        }
                    %>
                    <div class="clearfix"> </div>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
    </div>
</div>
<!--services end here-->
<!--renthouse_info end here-->

<!--footer start here-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-3 footer-grid">
                <h3>目录</h3>
                <ul>
                    <li><a href="../homePage.jsp">首页</a></li>
                    <li><a href="../building/building.jsp">楼盘</a></li>
                    <li><a href="rentHouse.jsp">租房</a></li>
                    <li><a href="../redecorated/redecorated.jsp">装修</a></li>
                    <li><a href="../comment/forum.jsp">论坛</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h3>关于我们</h3>
                <p>搜房网是全球最大的房地产家居网络平台，一直引领新房、二手房、租房、家居、房地产研究等领域的互联网创新，在PC及移动领域均处于领先的地位。
                    根据DCCI第三方数据显示，2014年搜房网PC平台用户浏览量和独立访客数始终领先，位居第一。</p>
            </div>
            <div class="col-md-3 footer-grid">
                <h3>售房</h3>
                <%
                    BuildingDao BuildDao = new BuildingDao();
                    ArrayList<Building> BDaoList = BuildDao.getAllBuilding();
//                为了显示最近的房屋信息
                    for(int BD=0;BD<BDaoList.size()&&BD<3;BD++){
                        Building BuildRent = BDaoList.get(BD);
                        BuildingImageDao RandImageDao = new BuildingImageDao();
                        ArrayList<BuildingImage> BuildImageList = RandImageDao.getAllBuildingImageNameByBuildingId(BuildRent.getBuildingId());
                        if(0<BuildImageList.size()){

                %>
                <div class="ftr-sub-gd">
                    <div class="col-md-4 ftr-gd2-img">
                        <a href="../building/buildingDetails.jsp?id=<%=BuildRent.getBuildingId()%>"><img src="../../images/<%=BuildImageList.get(0).getBuildingImageName()%>" width="60px" height="60px" alt=""></a>
                    </div>
                    <div class="col-md-8 ftr-gd2-text">
                        <a href="#"><h4><%=BuildRent.getBuildingName()%></h4></a>
                        <a href="#"><p><%=BuildRent.getBuildingTimeHanded()%></p></a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <%
                        }
                    }
                %>
            </div>
            <div class="col-md-3 footer-grid">
                <h3>装修信息</h3>
                <%
                    RedecoratedDao RDao = new RedecoratedDao();
                    ArrayList<Redecorated> Rimg = RDao.getAllRedecorated();
                    for (int img=0;img<Rimg.size()&&img<12;){
                %>
                <div class="ftr-gd4-img">
                    <%
                        for (int n=0;img<Rimg.size()&&n<4;img++){
                    %>
                    <a href="../redecorated/redecoratedDetails.jsp?id=<%=Rimg.get(img).getRedecoratedId()%>"><img src="../../images/<%=Rimg.get(img).getRedecoratedImageName()%>" width="60px" height="60px"/></a>
                    <% n++;}%>
                    <div class="clearfix"> </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <div class="copy-main">
                <div class="copy-left">
                    <p>Copyright &copy; 2017.Company TeamWang All rights reserved </p>
                </div>
                <div class="copy-right">
                    <ul>
                        <li><a href="../homePage.jsp">首页</a></li>
                        <li><a href="../building/building.jsp">楼盘</a></li>
                        <li><a href="rentHouse.jsp">租房</a></li>
                        <li><a href="redecorated.jsp">装修</a></li>
                        <li><a href="../comment/forum.jsp">论坛</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--footer end here-->

</body>
</html>
