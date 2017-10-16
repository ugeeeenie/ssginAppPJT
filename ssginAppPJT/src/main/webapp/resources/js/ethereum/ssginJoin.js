Web3 = require('web3');
web3 = new Web3();
web3.setProvider(new Web3.providers.HttpProvider('http://10.149.178.227:8545')); // 이거 localhost 대신 IP로 하면 안드로이드에서 트랜잭션 가능

var abi = JSON.parse('[{"constant":true,"inputs":[{"name":"userId","type":"bytes32"}],"name":"joinPossibleCheck","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"bytes32"}],"name":"existID","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"bytes32"},{"name":"userPwd","type":"bytes32"}],"name":"memberJoin","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"ssginAuth","outputs":[{"name":"id","type":"bytes32"},{"name":"pwd","type":"bytes32"},{"name":"flag","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"bytes32"},{"name":"userPwd","type":"bytes32"}],"name":"ssginWithID","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"userId","type":"bytes32"}],"name":"memberLeave","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"idList","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"userId","type":"bytes32"}],"name":"leavePossibleCheck","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]');
var ssginContract = web3.eth.contract(abi);

/* 한조 address, pwd*/
/* var adminAddr = "0x521536ad50dd3a22fe6beb0ca0f8ff30a5161eee";
 var adminPwd = "khc3121"; */

/* 지은 address, pwd */
var adminAddr = "0xa3cf1b84ee70fcf4db335e3e7d8f0fd3aa5045ca";
var adminPwd = "1111";

/* 지은 contract address */
var contractInstance = ssginContract.at('0xf3c80a68d305534077a1bbc8889ad62539f5c983');

$(function(){
	console.log("register");
	
	var userId = $('#name').val();
	var birth = $('#birth').val();
	var gender = $('#gender').val();
	var phone = $('#phone').val();
	console.log(userId, birth, gender, phone);
	
	var originPwd = $('#pwd').val();
	var newPwd = originPwd.substring(0,1) + "s"
				+ originPwd.substring(1,2) + "s"
				+ originPwd.substring(2,3) + "g"
				+ originPwd.substring(3,4) + "i"
				+ originPwd.substring(4,5) + "n"
				+ originPwd.substring(5);
	
	var id = web3.sha3(userId+birth+gender+phone);
	var pwd = web3.sha3(newPwd);
	console.log(id);
	console.log(pwd);
	
	contractInstance.joinPossibleCheck.call(id, function(e1, result){
		console.log("memberJoin");
		if(!e1){
			if(result == "joinPossible"){
				console.log(result);
				
				web3.personal.unlockAccount(adminAddr, adminPwd, function(e2, success){
					contractInstance.memberJoin(id, pwd, {gas: 140000, from: adminAddr}, function(e3, txHash){
						if(!e3){
							$("#filter").append('Smart Contract Transation ID  : <span style="background:#C0FFFF;">' + txHash +' </span><br>');
							var blockFilter = web3.eth.filter('latest');
							$("#filter").append('Transaction Start <br>');
							blockFilter.watch(function(e4, blockHash) {
								if(!e4){
									web3.eth.getBlock(blockHash, function(e5,block){
										if(!e5){
											$("#filter").append('New Block('+block.number+')['+block.hash+'] / ' + block.transactions.length + ' TXs <br>');
											for(var i = 0 ; i < block.transactions.length ; i++){
												if(txHash == block.transactions[i]){	
													$("#filter").append('<span style="background:#C0FFFF;">[' + block.transactions[i] + "] -- checked</span><br>");
													$("#filter").append('Transaction End <br>');
													blockFilter.stopWatching(function(e6,log){
														if(!e6){
															console.log(log);
															console.log("Join Success. hash : " + txHash);
															
															$.ajax({
																url: "/ssgin/joinDB.app",
																type: "post",
																data: { user_id : id,
																		user_block : block.number,
																		user_tx : txHash },
																success : function(){
																	$('.wrap-loading').addClass('display-none');
																	alert("블록체인 SSG IN 시스템 가입을 환영합니다^^");
																	location.href = "/ssgin/loginForm.app";
																}
															});
														}
														
														else{
															alert("e6 : " + e6);
														}
													});
												}else{
													$("#filter").append('['+block.transactions[i]+"] <br>");
												}
											}//end for
										}
										
										else{
											alert("e5 : " + e5);
										}
									});//end getBlock()
								}
								else{
									alert("e4 : " + e4);
								}
							});//end watch
						}
						else{
							alert("e3 : " + e3);
						}
					});
				});
			}
			
			if(result == "idAlreadyExist"){
				console.log(result);
				$('.wrap-loading').addClass('display-none');
				alert("사용자가 시스템에 존재합니다.");
				
				$.ajax({
					url: "/ssgin/loginUserCheck.app",
					type: "post",
					data: { user_id : id },
					success : function(){
						$('.wrap-loading').addClass('display-none');
						location.href = "/ssgin/loginForm.app";
					}
				});
			}
		}
		
		else{
			alert("e1 : " + e1);
		}
	});
});

// 딜레이시키고 화면변경할 때 사용할 것
function sleep(msecs) 
{
    var start = new Date().getTime();
    var cur = start;
    while (cur - start < msecs) 
    {
        cur = new Date().getTime();
    }
}