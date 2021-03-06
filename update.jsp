<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
    <script src="/js/jquery-3.6.0.min.js"></script>
    <script>
		function dropdown(){
			$(".header1 .searcharea").toggle();
			$(".header1 .woman").hide();
			$(".header1 .man").hide();
			$(".header1 .brand").hide();	
			$(".header1 .mypageshow").hide();
		}
		function dropdownWoman(){
			$(".header1 .woman").toggle();	 
			$(".header1 .searcharea").hide();
			$(".header1 .man").hide();
			$(".header1 .brand").hide();	
			$(".header1 .mypageshow").hide();
		}
		function dropdownMan(){
			$(".header1 .man").toggle();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();		
			$(".header1 .brand").hide();	
			$(".header1 .mypageshow").hide();
		}
		function dropdownKids(){
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .brand").hide();	
			$(".header1 .mypageshow").hide();
		}
		function dropdownBrand(){
			$(".header1 .brand").toggle();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .mypageshow").hide();					
		}
		function mypageShow(){
			$(".header1 .mypageshow").toggle();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .brand").hide();				
							
		}
		function modal(){
			$(".header2 .modal").fadeIn();
			$(".header1 .mypageshow").hide();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .brand").hide();	
		}
		function delgo(){
			$(".header2 .delgo2").fadeIn();
			$(".header1 .mypageshow").hide();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .brand").hide();
			$(".header2 .modal").fadeOut();
		}
		function sideclose2(){
			$(".header2 .delgo2").fadeOut();
		}
		function sideclose(){
			$(".header2 .modal").fadeOut();
		}
		function dropdownclose(){
			$(".header1 .searcharea").hide();
		}
	</script>
    <script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/css/member/NoLoginHeader.css">
    <title>????????? ????????????</title>
    <script>
        function agreedown(item){
            var value = $(item).val();
            if(value.length >= 1){
                $('#agree').show();
            }else{
                $('#agree').hide();
            }
            
        }
    </script>
    <script src="/js/media.js" defer></script>
    <script>
		/* ?????????????????? ??????????????? */
		document.onwheel = function (event){
			if(event.wheelDelta < 0){
				$("header").addClass("fiexed");
			}
			/* ???????????????????????? */
			console.log(window.pageYOffset);
			
			if(window.pageYOffset == 0){
				$("header").removeClass("fiexed");
			}
		}
	</script>
	<!--https://fontawesome.com/v5.15/icons/times?style=solid-->
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/css/NoLoginHeader.css">
    <link rel="stylesheet" href="/css/profile.css">
    <link rel="stylesheet" href="/css/footer.css">
    <style>
		.fiexed{
			position:fixed;
			width:100%;
		}
	</style>
</head>
<body>
    <header class="header1">
		<div class="callheader">
			<b>???????????? : 063-111-1234</b>
		</div>
		
		<div class="menu">
			<!-- ?????? ?????? -->
			<span class="title"><a href="/"><b>PERIDOT</b></a> &nbsp; / &nbsp;
			<a href="javascript:dropdownWoman();" class="cat"><b>??????</b></a>
			<a href="javascript:dropdownMan();" class="cat"><b>??????</b></a>
			<a href="javascript:dropdownBrand();" class="cat"><b>????????? ?????????</b></a>
			</span>
			
			<!-- ????????? ?????? -->
			<c:if test = "${member != null }">
			<span class="linkarea">
				<a href="javascript:dropdown();" class="search1" >
					??????..&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<img src="/img/??????.png" width="30px" height="30px">
				</a>
				
				<span>
					<a href="javascript:mypageShow()" class="mypage">
					<img src="/img/???????????????.png" width="30px" height="30px">
					</a>
			<!-- ?????? ??????????????? ????????? -->
					<span class="userinfo">??????????????? ${member.userFirstName}</span>	
					</span>
					<a href="javascript:modal()" class="cart">
					<img src="/img/????????????.png" width="30px" height="30px">
					</a>
					</span>
			
			<!-- ??????????????? ????????? ??? ???????????? ?????? -->
			<div class="mypageshow">
				<div class="lo"><a href="/member/mypage"><b>????????????</b></a></div>
				<div class="lo"><a href="/member/profile"><b>?????????</b></a></div>
				<div class="lo"><a><b>??????</b></a></div>
				<div><a href="/member/logout.do"><b>????????????</b></a></div>
			</div>
			<!-- ?????? ????????? ??? ???????????? ?????? -->
			<div class="searcharea">
				<div class="inputb sLeft">
					<input type="search" class="sbox" placeholder="??????..">
					<button class="sbt">??????</button>
				</div>
				<div class="inputb sRight">
					<a href="javascript:dropdownclose();" class="x">
					<i class="fas fa-times"></i>
					</a>
				</div>
				<div>
					<h3 class="inputb sLeft good" >?????? ?????? ??????</h3>
				</div>
				<div>
					<h2 class="inputb sLeft good2" >????????????</h2>
					<h2 class="inputb sLeft good2" >??????-??????</h2>
					<h2 class="inputb sLeft good2" >????????????</h2>
				</div>
			</div>
			</c:if>
			<!-- ?????? ???????????? -->
			<div class="woman">
				<div class="warea wparea">
					<a>?????????<br></a>
					<a>?????????<br></a>
					<a>STAR COLLECTION<br></a>
					<a>JOURNET COLLECTION<br></a>
					<a>GOLDEN RESORT COLLECTION<br></a>
					<a>GAME EDT CAPSULE
				</div>
				<div class="warea">
					<a>????????????<br></a>
					<img src="/img/?????????????????????.png"><a>??????-??????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>??????-??????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>????????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>????????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>????????????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>????????????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>????????????<br></a>
					<img src="/img/????????????.png"><a>Yeah</a>
				</div>
				<div class="wareas">
					<img src="/img/iphoto.jpg" class="ip">
					<h1>JOURNET COLLECTION</h1>
					<p>????????? ?????????, ????????? ?????? ????????? ????????? ????????? ????????? ?????????</p>
					<p class="pde">????????? ??????</p>
				</div>
			</div>
			<!-- ??????-->
			<div class="man">
				<div class="warea wparea">
					<a>?????????<br></a>
					<a>?????????<br></a>
					<a>STAR COLLECTION<br></a>
					<a>JOURNET COLLECTION<br></a>
					<a>GOLDEN RESORT COLLECTION<br></a>
					<a>GAME EDT CAPSULE
				</div>
				<div class="warea">
					<a>????????????<br></a>
					<img src="/img/?????????????????????.png"><a>??????-??????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>??????-??????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>????????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>????????????<br></a>
					<img src="/img/???????????????.png" class="shoesimg"><a>??????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>????????????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/??????????????????.png" class="shoesimg"><a>?????????<br></a>
					<img src="/img/?????????????????????.png" class="shoesimg"><a>????????????<br></a>
					<img src="/img/????????????.png"><a>Yeah</a>
				</div>
				<div class="wareas">
					<img src="/img/iphoto.jpg" class="ip">
					<h1>JOURNET COLLECTION</h1>
					<p>????????? ?????????, ????????? ?????? ????????? ????????? ????????? ????????? ?????????</p>
					<p class="pde">????????? ??????</p>
				</div>
			</div>
			<!-- ????????? ????????? -->
			<div class="brand">
				<div class="warea">
					<a>STORIES OF SNEAKERS<br></a>
					<a>?????????<br></a>
					<a>Yeah<br></a>
					<a>????????????<br></a>
					<a>??????-??????<br></a>
				</div>
				<div class="warea">
					<a>?????? ??????<br></a>
				</div>
				<div class="wareas">
					<img src="/img/iphoto.jpg" class="ip">
					<h1>JOURNET COLLECTION</h1>
					<p>????????? ?????????, ????????? ?????? ????????? ????????? ????????? ????????? ?????????</p>
					<p class="pde">????????? ??????</p>
				</div>
			</div>
		</div>
</header>
<header class="header2">
<!-- ?????????????????? -->
<div class="modal">
	<div id="inner">
		<div class="tt">
			<div class="stitle">
				<b><i>???</i> ?????????</b>
			</div>	
			<div class="x2">
				<a href="javascript:sideclose();" class="x">
				<i class="fas fa-times"></i>
			</a>
		</div>
		</div>
		<div class="scheck">
			???????????? ?????? ????????? ??????????????????
		</div>
		<div class="shopshow">
			<div class="inin">
<!-- ??????????????? ????????? ????????? ?????? ?????? db?????? ????????? ????????? ???????????? ??????????????? ?????? -->
			</div>
			<div class="carea">
				<div>
					<span class="content"><b>??????????????????  ??????????????????????????? js</b></span><br>
					<span class="cprice"><b>???&nbsp;0</b></span> <br>
					<span class="csize ccc">?????????: </span>
					<span class="csize">??????: </span>
					<br>
					<br>
					<a href="javascript:delgo()" class="cdel" ><b>??????</b></a>
				</div>
			</div>
		</div>
		<div class="c_all">
			<b><span class="c_all1">??????</span>
			<span class="c_all2">???&nbsp;0</span></b>
		</div>
		<div>
			<button class="checkout">??????????????????</button><br>
			<a class="shopview"><b><i>??????</i> ????????? ??????</b></a>
		</div>
	</div>
</div>
<!-- ?????????????????????????????? -->
<div class="delgo2">
	<div class="inner2">
	<div class="xxx">
		<div class="one">
			<b>????????? ?????????????????????????</b>
		</div>
		<div class="x9">
			<a href="javascript:sideclose2();" class="x">
				<i class="fas fa-times"></i>
			</a>
		</div>
	</div>	
		<div class="two">
			?????????????????? ????????? ?????????????????????????
		</div>
		<div class="three">
			<button class="threebt"><b>???, ???????????????</b></button>
		</div>
		<div class="four">
			<b>?????????, ????????? ???????????????</b>
		</div>
	</div>	
</div>
</header>
    <br>
    <br>
    <section>
    <form action="/member/update" method="post" name="fr">
        <div class="category">
            <p><b>????????????</b></p>
        </div>   
        <div>
            <h1 class="title"><em>????????? ????????????</em></h1>
        </div>
        <div class="box">
            <div class="box1"><b>?????? ?????? ????????? ?????? ??????</b></div>
            <div class="box_gender">
               
  				 	<select class="box_gender1" name="userGender" id="selectBox">
				         <option value="m" >??????</option>
				         <option value="f">??????</option>
				         <option value="n">?????????</option>
				   </select>
            </div>
            <div class="box_name1 one">
                <input type="text" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userFirstName}" name="userFirstName">
                <label for="text"><span>??????*</span></label>
            </div>
            <div class="box_name2 one">
                <input type="text" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userLastName}" name="userLastName">
                <label for="text"><span>???*</span></label>
            </div>
            <div class="box_user one">
                <input type="user" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userName}" name="userName">
                <label for="user"><span>????????????</span></label>
            </div>
            <div class="box_birth one">
                <input type="birth" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userBirth}" name="userBirth">
                <label for="birth"><span>????????????*</span></label>
            </div>
            <div class="box_num">
                <div class="box_select">
                    <select class="sel">
                        <option class="opt">+82</option>
                        <option class="opt">+26</option>
                        <option class="opt">+825</option>
                        <option class="opt">+119</option>
                        <option class="opt">+532</option>
                        <option class="opt">+1</option>
                        <option class="opt">+10</option>
                        <option class="opt">+226</option>
                        <option class="opt">+358</option>
                        <option class="opt">+246</option>
                        <option class="opt">+880</option>
                        <option class="opt">+81</option>
                    </select name="phone">
                </div>
                <div class="box_phone one">
                    <input type="phone" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userPhone}" name="userPhone">
                    <label for="phone"><span>????????????*</span></label>
                </div>
            </div>
   			
            <script>
                function test1(item){
                    $item = $(item);
                    $item.next("label").find("span").css({"transform":"translateY(-80%)","font-size":"12px"} );
                }
                function test2(item){
                    $item = $(item);
                    var value = $item.val();
                    if(value == ""){
                        $item.next("label").find("span").css({"transform":"inherit","font-size":"inherit"} );
                    }
                }
				
            </script>
            <div class="agree1">
                <div class="agree1_1"><b>???????????? ?????? ??? ????????? ?????? ??????(??????)</b></div>
                <div class="agree1_2">
                    ???????????? ??????: ??????, ??????, ????????????, ?????????, ??????, ?????? ??????, IP ??????<br>
                    ?????? ??? ?????? ??????:<br>
                    - PDDB??? ???????????? ?????? ????????? ?????????(??????, ??????)??? ????????? ?????? ??????(??????, ??????, ??????)??? ???????????? 
                    ????????? ????????? ???????????? ??????????????? ????????? ????????? ?????? ???????????? ???????????? ?????? ?????? ??????(???: ??????, ?????? ??? ????????? ????????? ????????? 
                    ???????????? ?????? ??????)<br>
                    - ?????? ??? ?????? ????????? ??????<br>
                    ?????? ??????: ?????? ????????? ?????? ????????? ????????? ?????? ????????? ????????? ?????? ?????? GG SpA??? ???????????????.
                </div>
            </div>
            <div class="agree2">
                <input type="checkbox" name="agree1" value="????????????1" checked><b>?????? ????????? ??????, ?????? ????????? ??????
                ?????? ????????? ????????? ????????? ???????????????.</b>
            </div>
            
            <div class="agree3">
                <div class="agree3_1"><b>???????????? ?????? ??? ????????? ?????? ??????(??????)</b></div>
                <div class="agree3_2">
                    ???????????? ??????: ??????, ??????, ????????????, ?????????, ??????, ?????? ??????, IP??????<br>
                    ?????? ??? ?????? ??????: <br>
                    -????????? ??? ????????????(?????? ?????? ?????? ????????? ?????????, SMS ?????? ???????????? ????????? ?????? 
                    ???????????? ????????? ?????? ????????? ?????????, ??????, ????????? ??????)<br>
                    ?????? ?????? ??????: ?????? ????????? ?????? ????????? ????????? ?????? ????????? ????????? ?????? ?????? GG SpA??? ???????????????<br>
                    ????????? ???????????? ?????? ?????? ??????, ??????, ????????? ????????? ????????? ???????????? ??? ????????? ????????? ????????? 
                    ???????????? ???????????? ?????? ??? ?????????, ?????? ?????? ??? ?????? ??????????????? ????????? ????????? ????????????.
                </div>
            </div> 
            <div class="agree4">
                <input type="checkbox" name="agree2" value="????????????2" checked><b>?????? ????????? ??????, ????????? ???????????? ???????????? 
                    ????????? ?????? ????????? ?????? ?????? ????????? ????????? ????????? ???????????????.</b>
            </div>
            <div class="agree5">
                <div class="agree5_1"><b>???????????? ?????? ????????? ?????? ??????</b></div>
                <div class="agree5_2">
                    PD SpA??? ?????????????????? ????????? ?????? ????????? ?????? ??? ????????? ???????????? ??????????????? ????????? ??? ????????????.
                </div>
            </div>
            <div class="agree6">
                <input type="checkbox" name="agree3" value="????????????3" checked><b>?????? ????????? ??????, ????????? ???????????? ???????????? ????????? ?????? ?????? ????????? 
                    ?????? ????????? ???????????????.
                </b>
            </div>
            <div class="agree7">
                ????????? ?????????????????? <a href="#">?????? ??????</a>??? ???????????????.
            </div>
            <div class="btn">
                <div class="btn1">
                    <input type="submit" class="btn1_1"value="??????" >
                </div>
                <div class="btn2">
                    <input type="button" class="btn2_1"value="??????" onclick="location.href='/'">
                </div>
            </div>
            <div class="delete">
                <b>?????????????????? ???????????? ???????????? ???????????? ???????????????. ????????? ???????????? 
                ??? ?????? ?????? ?????? ??? ????????? ????????? ??? ????????? ??????????????? ????????????. ??? ????????? 
                ????????? ??? ????????????.</b>
            </div>
            <div class="return">
                <a href="#">???????????? ????????????</a>
            </div>
        </div>
        </form>
    </section>
    <br>
    <br>
    <footer>
        <div class="hr">
        <div class="title">
            <i>PERIDOT</i> NEWSLETTER
        </div>
        <div class="content">
            peridot?????? ??????????????? ????????? ????????????, ?????? ??????, ????????? ????????? ?????? ?????? ???????????????!
        </div>
        
        <form action="get" >
            <p class="content_email">
                <input type="email" class="email" name="email" onkeyup='agreedown(this)'autocomplete="off" onfocus="test3(this)" onblur="test4(this)"required>
                <label for="user_email"><span><em>????????? ??????</em></span></label>
            </p>
        </form>
        <br>
        <br>
        <div class="agree" id="agree">
            <div class="content_radio">
                <input type="radio" name="email" value="??????">??????
                <input type="radio" name="email" value="??????">??????
                <input type="radio" name="email" value="?????????">?????????
            </div>
            <div class="content_agree">
            <input type="checkbox" name="agree" value="????????????">?????????????????? ????????? ???????????? ???????????? ?????? ???????????? ???????????? ??? ?????? ?????? ????????? ???????????????.  
            </div>
            <div class="content_btn">
                <button type="submit" class="btn_regist">????????????</button>
            </div>
        </div>
    </div>
        <div class="footbar">
            <div class="footbar_div0">
                <ul class="footbar_menu0">
                    <li>
                        <i class="fas fa-box"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="">?????????: KR / KO</a></li>
                    <li>
                        <i class="fas fa-map-marker-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="">Find a store</a></li>
                </ul>
            </div>
            <div class="footbar_div1">
                <p><a href="#" class="btn1">?????? ??????</a></p>
                <ul class="footbar_menu1">    
                    <li><a href="">Exclusive Services</a></li>
                    <li><a href="">?????? ??????</a></li>
                    <li><a href="">?????? ??? ??????</a></li>
                    <li><a href="">?????? ??????</a></li>
                </ul>
            </div>
            <div class="footbar_div2">
                <p><a href="#" class="btn2">COOPORATE</a></p>
                <ul class="footbar_menu2">
                    <li><a href="">?????????</a></li>
                    <li><a href="">?????? ??????</a></li>
                    <li><a href="">?????? ??????</a></li>
                    <li><a href="">???????????? ?????? ??????</a></li>
                </ul>
            </div>
            <div class="footbar_div3">
                <p><a href="#" class="btn3">GOLDEN WORLD</a></p>
                <ul class="footbar_menu3">
                    <li><a href="">The brand</a></li>
                    <li><a href="">Sneaker Makers</a></li>
                    <li><a href="">Lab</a></li>
                    <li><a href="">#twas</a></li>
                </ul>
            </div>
            <div class="footbar_div4">
                    <div class="div4_1">
                        <h4><em>?????? ???????????????</em></h4>
                    </div>
                    <div class="div4_2">
                        <p>????????? ????????? ?????? ????????? ????????? ?????? ?????? ?????? ???????????? ????????? ????????? ????????????.</p>
                    </div>
                    <div class="div4_3">
                        <b>Customer Care</b>
                    </div>
                
            </div>
        </div>
        <script>
			function test3(item){
				var $item = $(item);
				$item.css("border-bottom", "1px solid darkgray");
				$item.next("label").find("span").css({ "transform":"translateY(-100%)","font-size":"24px","color":"gray"});
				$item.next("label::after").css({"width":"100%","transform":"translateX(0)"});
			}
			function test4(item){
				var value = item.value;
				var $item = $(item);
				if(value == ""){	
					$item.next("label").find("span").css({ "transform":"inherit","font-size":"inherit","color":"inherit"});
					$item.next("label::after").css({"width":"inherit","transform":"inherit"});
				}
			}
		</script>
    </footer>
</body>
</html>