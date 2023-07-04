<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2023/7/3
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的购物车</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            list-style: none;
        }
        #pc.shopping-cart {
            width: 1200px;
            margin: 0 auto;
        }
        #pc .header{
            width: 100%;
            height: 70px;
            line-height: 70px;
            background-color:rgb(236, 230, 230);
        }
        #pc .header ul li{
            display: flex;
            float: left;
        }
        #pc dl{
            margin-bottom: 20px;
        }
        #pc dl dt{
            border: 1px solid rgb(236, 230, 230);
            height: 30px;
            line-height: 30px;
            font-weight: bold;
        }
        #pc dl dd{
            margin-left: 0px;
            padding-left: 0px;
            border: 1px solid rgb(236, 230, 230);
            box-sizing: border-box;
            width:100%;
            height: 120px;
            line-height: 100px;
            border-top: none;
        }
        #pc dl dd ul li {
            float: left;
            margin-left: 50px;
        }
        #pc dl dd ul li strong{
            color: red;
            font-weight: bold;
        }
        #pc .minus, .plus {
            cursor: pointer;
        }
        #pc .footer {
            border: 1px solid rgb(236, 230, 230);
            padding-top: 20px;
            height: 40px;
            background-color: rgb(236, 230, 230);
        }

        #pc .footrg {
            float: right;
        }

        #pc .footrg span {
            padding: 0 15px;
        }

        #pc .footrg strong {
            color: red;
        }

        #pc .footrg .settlement {
            background-color: orange;
            padding: 20px;
            cursor: pointer;
        }
        #pc img{
            vertical-align: middle;
        }
        #pc .left{
            margin-left: 100px;
        }
        #pc .left50{
            margin-left: 50px;
        }
        #pc .left80{
            margin-left: 80px;
        }
        #pc .left125{
            margin-left: 125px;
        }
        #pc .left150{
            margin-left: 150px;
        }
        #pc .left250{
            margin-left: 250px;
        }
        #pc .right{
            margin-right: 50px;
        }
        #pc span{
            margin-left: 10px;
        }




        #phone {
            display: none;
        }
        @media screen and (max-width: 768px) {
            body {
                background: #fff;
                padding: 0;
                color: #000;
                text-align: left;
            }
            #pc {
                display: none;
            }
            #phone {
                display: block;
            }
            * {
                box-sizing: border-box;
            }

        }

        #phone header {
            background-color: red;
            height: 40px;
            line-height: 40px;
            padding: 0 10px;

        }
        #phone .header ul li{
            display: flex;
            float: left;
        }
        #phone dl dt{
            border: 1px solid rgb(236, 230, 230);
            height: 30px;
            line-height: 30px;
            font-weight: bold;
        }
        #phone dl dd{
            border: 1px solid rgb(236, 230, 230);
            box-sizing: border-box;
            width:100%;
            padding-top: 10px;
            height: 100px;
        }
        #phone dl dd ul li {
            float: left;
            margin-left: 10px;
        }
        #phone dl dd ul li strong{
            color: red;
            font-weight: bold;
        }
        #phone .minus, .plus {
            cursor: pointer;
        }
        #phone .footer {
            border: 1px solid rgb(236, 230, 230);

            padding-top: 20px;
            height: 62px;
            background-color: rgb(236, 230, 230);
        }
        #phone .left{
            float: left;
        }
        #phone .right{
            float: right;
        }
        #phone .top{
            margin-top: 20px;
        }
        #phone .footrg {
            float: right;
        }
        #phone .footrg p{
            padding: 0px;
            padding-top: 15px;
        }
        #phone .footrg span {
            padding: 0 15px;
        }

        #phone .footrg strong {
            color: red;
        }

        #phone .footrg .settlement {
            background-color: orange;
            padding: 20px;
            cursor: pointer;
        }
        #phone img{
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div class="shopping-cart" id="pc">
    <div class="header">
        <ul>
            <li class="left50"><input type="checkbox" class="all">全选</li>
            <li class="left150">商品信息</li>
            <li class="left250">单价</li>
            <li class="left150">数量</li>
            <li class="left150">金额</li>
            <li class="left80">操作</li>
        </ul>
    </div>
    <div class="next">
        <dl>
            <dt>店铺名：华为旗舰店</dt>
            <dd>
                <ul>
                    <li><input type="checkbox" name="ischeck" class="right"></li>
                    <li><img src="img/poxiao.png" alt="" width="28px" height="80px"><img src="img/xiaguang.png" alt="" width="28px" height="80px"><img src="img/purple.png" alt="" width="28px" height="80px"><img src="img/sliver.png" alt="" width="28px" height="80px"><img src="img/black.png" alt="" width="28px" height="80px">
                        <span>华为mate50pro</span>
                    </li>
                    <li class="left">
                        <strong>￥<span class="price">6999</span></strong>
                    </li>
                    <li>
                        <span class="minus">-</span>
                        <input type="text" name="" class="count" value="1" >
                        <span class="plus">+</span>
                    </li>
                    <li>
                        <strong>￥<span class="price_sum">6999</span></strong>
                    </li>
                    <li>
                        <span class="del">删除</span>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl>
            <dt>店铺名：华为旗舰店</dt>
            <dd>
                <ul>
                    <li><input type="checkbox" name="ischeck" class="right"></li>
                    <li><img src="img/P50-Pro-specs-2.png " alt="" width="184px" height="80px">
                        <span>华为p50pro</span>
                    </li>
                    <li class="left80">
                        <strong>￥<span class="price">5988</span></strong>
                    </li>
                    <li>
                        <span class="minus">-</span>
                        <input type="text" name="" class="count" value="1" >
                        <span class="plus">+</span>
                    </li>
                    <li>
                        <strong>￥<span class="price_sum">5988</span></strong>
                    </li>
                    <li>
                        <span class="del">删除</span>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl>
            <dt>店铺名：华为旗舰店</dt>
            <dd>
                <ul>
                    <li><input type="checkbox" name="ischeck" class="right"></li>
                    <li><img src="img/10pro.png" alt="" width="111px" height="80px">
                        <span>华为nova10pro</span>
                    </li>
                    <li class="left125">
                        <strong>￥<span class="price">3999</span></strong>
                    </li>
                    <li>
                        <span class="minus">-</span>
                        <input type="text" name="" class="count" value="1" >
                        <span class="plus">+</span>
                    </li>
                    <li>
                        <strong>￥<span class="price_sum">3999</span></strong>
                    </li>
                    <li>
                        <span class="del">删除</span>
                    </li>
                </ul>
            </dd>
        </dl>
    </div>
    <div class="footer">
        <div class="footrg">
            <span>已选商品<strong id="piece">0</strong>件</span>
            <span>合计(不含运费):<strong class="sum_">0.00</strong></span>
            <span class="settlement">结算</span>
        </div>
    </div>
</div>
<div id="phone">
    <div class="header">
        <header>
            <div class="left">
                <span>←</span>
                <span>购物车</span>
            </div>
            <div class="right">
                <span>刷新</span>
                <span>分享</span>
                <span>更多</span>
            </div>
        </header>
    </div>
    <div class="next">
        <dl>
            <dt>店铺名：华为旗舰店</dt>
            <dd>
                <ul>
                    <li><input type="checkbox" name="ischeck1" class="left top"></li>
                    <li style="margin-right: 42px;"><img src="poxiao.png" alt="" width="28px" height="80px"><img src="xiaguang.png" alt="" width="28px" height="80px"><img src="purple.png" alt="" width="28px" height="80px"><img src="sliver.png" alt="" width="28px" height="80px"><img src="black.png" alt="" width="28px" height="80px"></li>
                    <li>
                        <p>华为mate50pro </p>
                        <p><span class="minus1">-</span>
                            <input type="text" name="" class="count1" value="1" >
                            <span class="plus1">+</span> </p>
                        <p><strong>￥<span class="price_sum1">6999</span></strong></p>
                    </li>
                    <li class="del right top">
                        <span>删除</span>
                    </li>
                </ul>
            </dd>
        </dl>

        <dl>
            <dt>店铺名：华为旗舰店</dt>
            <dd>
                <ul>
                    <li><input type="checkbox" name="ischeck1" class="left top"></li>
                    <li><img src="P50-Pro-specs-2.png " width="184px" height="80px" alt=""></li>
                    <li>
                        <p>华为p50pro </p>
                        <p><span class="minus1">-</span>
                            <input type="text" name="" class="count1" value="1" >
                            <span class="plus1">+</span> </p>
                        <p><strong>￥<span class="price_sum1">5988</span></strong></p>
                    </li>
                    <li class="del right top">
                        <span>删除</span>
                    </li>
                </ul>
            </dd>
        </dl>

        <dl>
            <dt>店铺名：华为旗舰店</dt>
            <dd>
                <ul>
                    <li><input type="checkbox" name="ischeck1" class="left top"></li>
                    <li style="margin-right: 70px;"><img src="10pro.png" alt="" width="111px" height="80px"></li>
                    <li>
                        <p>华为nova10pro </p>
                        <p><span class="minus1">-</span>
                            <input type="text" name="" class="count1" value="1" >
                            <span class="plus1">+</span> </p>
                        <p><strong>￥<span class="price_sum1">3999</span></strong></p>
                    </li>
                    <li class="del right top">
                        <span>删除</span>
                    </li>
                </ul>
            </dd>
        </dl>

    </div>
    <div class="footer">
        <span><input type="checkbox" class="all1">全选</span>
        <div class="footrg">
            <span>已选商品<strong id="piece1">0</strong>件</span>
            <span>合计(不含运费):<strong class="sum_1">0.00</strong></span>
            <span class="settlement">结算</span>
        </div>
    </div>
</div>
</body>
<script>
    var del=document.getElementsByClassName("del");//删除
    var dl=document.getElementsByTagName("dl");
    var all=document.getElementsByClassName("all")[0];//获取全选按钮
    var ischeck=document.getElementsByName("ischeck");//获取商品勾选状态复选框节点
    var minus=document.getElementsByClassName("minus");//商品减
    var plus=document.getElementsByClassName("plus");//商品加
    var count=document.getElementsByClassName("count");//商品数量
    var price=document.getElementsByClassName("price");//获得单价
    var price_sum=document.getElementsByClassName("price_sum");//获得商品价格
    var sum_=document.getElementsByClassName("sum_")[0];//获得商品总价格
    var piece=document.getElementById("piece");//已选商品件数

    //全选功能
    all_();
    function all_(){
        all.onchange=function(){
            if(all.checked){
                for(var i=0;i<ischeck.length;i++)
                {
                    ischeck[i].checked=true;
                }
                piece_();
            }
            else{
                for(var i=0;i<ischeck.length;i++)
                {
                    ischeck[i].checked=false;
                }
                piece_();
            }
            shss();
        }
    }
    //商品状态勾选
    comm_ischeck();
    function comm_ischeck(){
        for (var i=0;i<ischeck.length;i++) {
            (function(j){
                ischeck[j].onclick=function(){
                    shss();
                    piece_();

                    for (var k=0;j<ischeck.length;k++) {
                        if (!ischeck[k].checked) {
                            all.checked = false;
                            break;
                        }
                        all.checked =true;
                    }
                }
            })(i)
        }
    }

    //减少商品
    add_is();
    function add_is(){
        for(var i=0;i<minus.length;i++){
            (function(i){
                minus[i].onclick=function(){
                    if(parseInt(count[i].value)<2){
                        count[i].value=1;
                    }
                    else{
                        count[i].value=parseInt(count[i].value)-1;
                    }
                    var pric=price[i].innerHTML;
                    price_sum[i].innerHTML=parseInt(pric)*parseInt(count[i].value);

                    shss();
                    piece_();
                }
            })(i)
        }
    }
    //添加商品
    add();
    function add(){
        for(var i=0;i<plus.length;i++){
            (function(i){
                plus[i].onclick=function(){
                    var pric=price[i].innerHTML;
                    count[i].value=parseInt(count[i].value)+1;
                    price_sum[i].innerHTML=parseInt(pric)*parseInt(count[i].value);
                    shss();
                    piece_();
                }
            })(i)
        }
    }
    //count
    count_();
    function count_(){
        for(var i=0;i<count.length;i++){
            (function(i){
                count[i].onchange=function(){
                    var pric=price[i].innerHTML;
                    count[i].value=parseInt(count[i].value)+1;
                    price_sum[i].innerHTML=parseInt(pric)*parseInt(count[i].value);
                    shss();
                    piece_();
                }
            })(i)
        }
    }

    //计算已选商品件数
    piece_();
    function piece_(){
        piece.innerHTML=0;
        for(var i=0;i<ischeck.length;i++){
            if(ischeck[i].checked){
                piece.innerHTML=parseInt(piece.innerHTML)+parseInt(count[i].value);
            }
        }
    }

    //计算商品总额
    shss();
    function shss(){
        sum_.innerHTML=0;
        for(var i=0;i<ischeck.length;i++){
            if(ischeck[i].checked){
                console.log(sum_.innerHTM);
                sum_.innerHTML=parseInt(sum_.innerHTML)+parseInt(price_sum[i].innerHTML);
            }
        }
    }

    //删除
    del_();
    function del_(){
        for(var i=0;i<del.length;i++){
            (function(i){
                del[i].onclick=function(){
                    dl[i].parentNode.removeChild(dl[i]);
                    shss();
                    piece_();
                }
            })(i)
        }
    }



    var all1=document.getElementsByClassName("all1")[0];//获取全选按钮
    var ischeck1=document.getElementsByName("ischeck1");//获取商品勾选状态复选框节点
    var minus1=document.getElementsByClassName("minus1");//商品减
    var plus1=document.getElementsByClassName("plus1");//商品加
    var count1=document.getElementsByClassName("count1");//商品数量
    var price1=document.getElementsByClassName("price1");//获得单价
    var price_sum1=document.getElementsByClassName("price_sum1");//获得商品价格
    var sum_1=document.getElementsByClassName("sum_1")[0];//获得商品总价格
    var piece1=document.getElementById("piece1");//已选商品件数

    //全选功能
    all_1();
    function all_1(){
        all1.onchange=function(){
            if(all1.checked){
                for(var i=0;i<ischeck1.length;i++)
                {
                    ischeck1[i].checked=true;
                }
                piece_1();
            }
            else{
                for(var i=0;i<ischeck1.length;i++)
                {
                    ischeck1[i].checked=false;
                }
                piece_1();
            }
            shss1();
        }
    }
    //商品状态勾选
    comm_ischeck1();
    function comm_ischeck1(){
        for (var i=0;i<ischeck1.length;i++) {
            (function(j){
                ischeck1[j].onclick=function(){
                    shss1();
                    piece_1();

                    for (var k=0;j<ischeck1.length;k++) {
                        if (!ischeck1[k].checked) {
                            all1.checked = false;
                            break;
                        }
                        all1.checked =true;
                    }
                }
            })(i)
        }
    }

    //减少商品
    add_is1();
    function add_is1(){
        for(var i=0;i<minus1.length;i++){
            (function(i){
                minus1[i].onclick=function(){
                    if(parseInt(count1[i].value)<2){
                        count1[i].value=1;
                    }
                    else{
                        count1[i].value=parseInt(count1[i].value)-1;
                    }
                    var pric=price[i].innerHTML;
                    price_sum1[i].innerHTML=parseInt(pric)*parseInt(count1[i].value);

                    shss1();
                    piece_1();
                }
            })(i)
        }
    }
    //添加商品
    add1();
    function add1(){
        for(var i=0;i<plus1.length;i++){
            (function(i){
                plus1[i].onclick=function(){
                    var pric=price[i].innerHTML;
                    count1[i].value=parseInt(count1[i].value)+1;
                    price_sum1[i].innerHTML=parseInt(pric)*parseInt(count1[i].value);
                    shss1();
                    piece_1();
                }
            })(i)
        }
    }
    //count1
    count_1();
    function count_1(){
        for(var i=0;i<count1.length;i++){
            (function(i){
                count1[i].onchange=function(){
                    var pric=price1[i].innerHTML;
                    count1[i].value=parseInt(count1[i].value)+1;
                    price_sum1[i].innerHTML=parseInt(pric)*parseInt(count1[i].value);
                    shss1();
                    piece_1();
                }
            })(i)
        }
    }

    //计算已选商品件数
    piece_1();
    function piece_1(){
        piece1.innerHTML=0;
        for(var i=0;i<ischeck1.length;i++){
            if(ischeck1[i].checked){
                piece1.innerHTML=parseInt(piece1.innerHTML)+parseInt(count1[i].value);
            }
        }
    }

    //计算商品总额
    shss1();
    function shss1(){
        sum_1.innerHTML=0;
        for(var i=0;i<ischeck1.length;i++){
            if(ischeck1[i].checked){
                console.log(sum_1.innerHTM);
                sum_1.innerHTML=parseInt(sum_1.innerHTML)+parseInt(price_sum1[i].innerHTML);
            }
        }
    }

</script>
</html>
