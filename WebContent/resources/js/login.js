					
				$(function(){
					// 初始化 传入dom id
				new Victor("container", "output");
				});
				//开始加载
				 function startWaiting() {
				     $(".cover").css({ 'display': 'block', 'opacity': '0.8' });
				     $(".showLoad").stop(true).animate({ 'margin-top': '300px', 'opacity': '1' }, 200);
				 }

 				//结束加载
				 function endWaiting() {
				     $(".showLoad").stop(true).animate({ 'margin-top': '250px', 'opacity': '0' }, 400);
				     $(".cover").css({ 'display': 'none', 'opacity': '0' });
				 }
				function shakeById(o){
					    var $panel = $("#"+o);
					    box_left = ($(window).width() -  $panel.width()) /3000;
					    $panel.css({'left': box_left,'position':'relative'});
					    for(var i=1; 3>=i; i++){
					        $panel.animate({left:box_left-(30-10*i)},50);
					        $panel.animate({left:box_left+(30-10*i)},50);
					    }
					} 
				var code;//声明一个变量用于存储生成的验证码
				function changeImg(){
					//alert("换图片");
					var arrays=new Array('1','2','3','4','5','6','7','8','9','0');
					code='';//重新初始化验证码
					//alert(arrays.length);
					//随机从数组中获取四个元素组成验证码
					for(var i=0;i<4;i++){
					//随机获取一个数组的下标
						var r=parseInt(Math.random()*arrays.length);
						code+=arrays[r];
						//alert(arrays[r]);
					}
					//alert(code);
					$("#code").html(code);
				}	
				$(function() {
					$("#code").click(function(){
						changeImg();
					});
				});
		$(function() {
				var $eye = $(".judge-icon");
				var $password = $("#box_pass");
				$eye.click(function() {
					 if ($password.attr("type")=="password") {
						$password.attr("type","text");
						$eye.attr("class","icon-eye-open judge-icon");
					}else{
						$password.attr("type","password");
						$eye.attr("class","icon-eye-close judge-icon");
					} 
				});
		});
		$(function() {
			var hei = $(document).height();
		     $(".cover").css({ "height": hei });
			    var $button = $("#submit_button");
				var $user = $("#box_name");
				var $password = $("#box_pass");
				var $code = $("#vcode");
				$user.focus(function () {
					$user.css("border","1px solid skyblue");
					$("#user_msg").html("");
					$("#user_icon").css("color","black");
				});
				$password.focus(function () {
					$password.css("border","1px solid skyblue");
					$("#pwd_msg").html("");
					$("#pwd_icon").css("color","black");
					$("#user_msg").html("");
					$user.css("border","1px solid rgba(0,0,0,0.6)");
					$("#user_icon").css("color","black");
				});
				$code.focus(function () {
					$code.css("border","1px solid skyblue");
					$("#code_msg").html("");
					$("#code_icon").css("color","black");
				});
				$user.blur(function () {
					$user.css("border","1px solid rgba(0,0,0,0.6)");
				});
				$password.blur(function () {
					$password.css("border","1px solid rgba(0,0,0,0.6)");
					
				});
				$code.blur(function () {
					$code.css("border","1px solid rgba(0,0,0,0.6)");
				});
				$button.click(function() {
					var input_user=$user.val();
					var input_password=$password.val();
					var input_code=$code.val();
					if (input_user==""&&input_password==""&&input_code=="") {
						shakeById("div_user");
						shakeById("div_pwd");
						shakeById("div_code"); 
						$("#user_msg").html("请输入学工号").css("color","red");
						$("#pwd_msg").html("请输入密码").css("color","red");
						$("#code_msg").html("请输入验证码").css("color","red");
						$user.css("border","1px solid red");
						$password.css("border","1px solid red");
						$code.css("border","1px solid red");
						$("#user_icon").css("color","red");
						$("#pwd_icon").css("color","red");
						$("#code_icon").css("color","red");
					}
					 else if(input_user!=""&&input_password==""&&input_code==""){
						shakeById("div_pwd");
						shakeById("div_code"); 
						$("#pwd_msg").html("请输入密码").css("color","red");
						$("#code_msg").html("请输入验证码").css("color","red");
						$password.css("border","1px solid red");
						$code.css("border","1px solid red");
						$("#pwd_icon").css("color","red");
						$("#code_icon").css("color","red");
					}
					else if(input_user==""&&input_password!=""&&input_code==""){
						shakeById("div_user");
						shakeById("div_code"); 
						$("#user_msg").html("请输入学工号").css("color","red");
						$("#code_msg").html("请输入验证码").css("color","red");
						$user.css("border","1px solid red");
						$code.css("border","1px solid red");
						$("#user_icon").css("color","red");
						$("#code_icon").css("color","red");
					}
					 else if(input_user==""&&input_password==""&&input_code!=""){
						shakeById("div_user");
						shakeById("div_pwd");
						$("#user_msg").html("请输入学工号").css("color","red");
						$("#pwd_msg").html("请输入密码").css("color","red");
						$user.css("border","1px solid red");
						$password.css("border","1px solid red");
						$("#user_icon").css("color","red");
						$("#pwd_icon").css("color","red");
					}
					 else if(input_user!=""&&input_password!=""&&input_code==""){
						shakeById("div_code");
						$("#code_msg").html("请输入验证码").css("color","red");
						$code.css("border","1px solid red");
						$("#code_icon").css("color","red");
					}
					else if(input_user!=""&&input_password==""&&input_code!=""){
						shakeById("div_pwd");
						$("#pwd_msg").html("请输入密码").css("color","red");
						$password.css("border","1px solid red");
						$("#pwd_icon").css("color","red");
					}
					else if(input_user==""&&input_password!=""&&input_code!=""){
						shakeById("div_user");
						$("#user_msg").html("请输入学工号").css("color","red");
						$user.css("border","1px solid red");
						$("#user_icon").css("color","red");
					}
					 else if (input_user!=""&&input_password!=""&&input_code!="") {
						$.ajax({
							url:"student/login.do",
							data:{"sid":input_user,"password":input_password},
							dataType:"json",
							success:function(msg){
								if (msg == 0) {
									shakeById("div_user");
									shakeById("div_pwd");
									$("#user_msg").html("用户名或密码错误！").css("color","red");
									$user.css("border","1px solid red");
									$password.css("border","1px solid red");
									$("#user_icon").css("color","red");
									$("#pwd_icon").css("color","red");
								}else{
									if(input_code==code){
											startWaiting();
									         var code1 = 3;
									         setInterval(function(){
									             code1--;
									             if(code1===1){
									                 endWaiting();
									                 $("#loginForm").submit();
									                 return false;
									             }
									         }, 1000);
										
									}else {
										shakeById("div_code");
										$("#code_msg").html("验证码错误！").css("color","red");
										$code.css("border","1px solid red");
										$("#code_icon").css("color","red");
									}
								}
							}
						});
					} 
						
				}); 
						
			});