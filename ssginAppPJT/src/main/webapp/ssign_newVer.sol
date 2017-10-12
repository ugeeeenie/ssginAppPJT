pragma solidity ^0.4.11;
 contract Ssgin {
     struct User {
         bytes32 id;
         bytes32 pwd;
         bool flag; // true이면 가입, false이면 탈퇴
    }        
         
    /* mapping 타입은 연관배열과 유사하다. 
         mapping의 key는 byte32 타입의 ID가 저장되고, value는 User 객체가 저장된다.    */  
     mapping (bytes32 => User) public ssginAuth;
     
     /* Solidity는 생성자의 파라미터로 string을 지원하지 않는다.
         그래서 id를 저장하기 위해서 byte32 배열을 사용한다.    */
     mapping (bytes32 => bytes32) public idList;
     //uint8 cnt; // idList의 index값을 지정하기 위한 변수
     
      /*    이것은 생성자이며 블럭체인에 컨트랙트가 디플로이 될때 한번 호출된다.    */
     function  Ssgin()  {
        ssginAuth["admin"].id = "admin";
        ssginAuth["admin"].pwd = makePwd("pwd");
        ssginAuth["admin"].flag = true;
     }         
     
      // 이 함수는 id가 존재하면 true, 존재하지 않으면 false를 반환한다.
     function existID(bytes32 id) constant returns (bool) {
         if (idList[id] == id) {
             return true;
         } 
         
         return false;
     }    
         
     // 이 함수는 id값이 존재하면 pwd값을 비교하고 인증 여부를 반환한다. 
     function ssginWithID(bytes32 userId, bytes32 userPwd) constant returns (string) {
         if (existID(userId)){ // id가 존재한다면
            if(ssginAuth[userId].flag){ // 사용중인 id라면(flag가 true)
                if(ssginAuth[userId].pwd == userPwd){ // pwd가 일치한다
                    return "ssginSuccess";
                }
                
                else{ // 일치하지 않는다면
                    return "wrongPassword";
                }
             }
             
             else{ // id가 존재하지만 사용중이 아님(탈퇴. flag가 false)
                 return "noUser";
             } 
         }
         
         else { // id가 존재하지 않는다면
             return "noUser";
         }
     }
     
     // 이 함수는 id값을 확인하고, 새 사용자를 등록한다.
     function memberJoin(bytes32 userId) constant returns (string) {
        //bytes32 id = makeId(userId);
        bytes32 id = userId;
        if(existID(id)){ // id가 존재한다면
            if(ssginAuth[id].flag){ // 사용중인 id라면(flag가 true)
                return "idAlreadyExist";
            }else{ // id가 존재하지만 사용중이 아님(탈퇴. flag가 false)
                 return "joinPossible"; // join 가능(join() 호출하기)
            }
         }else { // id가 존재하지 않는다면
            return "joinPossible"; // join 가능(join() 호출하기)
         }
    }        
    
    function memberJoin2(bytes32 userId, bytes32 userPwd) {
        bytes32 id = userId;
        bytes32 pwd = userPwd;
         
        User user;
        user.flag = true;
        user.id = id;
        user.pwd = pwd;
        
        idList[user.id] = user.id;
        //ssginAuth[user.id] = user;
        ssginAuth[user.id].id = user.id;
        ssginAuth[user.id].pwd = user.pwd;
        ssginAuth[user.id].flag = user.flag;
    }
     
     // 이 함수는 id가 존재하면 탈퇴를 시킨다.
     function memberLeave(bytes32 userId) constant returns (bytes32) {
        bytes32 id = userId;
        if(existID(id)) { // id가 존재한다면
             if(ssginAuth[id].flag) { // 사용중인 id라면(flag가 true)
                 return "leavePossible"; // leave 가능(leave() 호출하기)
             }
             
             else { // id가 존재하지만 사용중이 아님(탈퇴. flag가 false)
                 return "noUser";
             }
         }
         
        else {  // id가 존재하지 않는다면
             return "noUser";
         }
     }
     
     function memberLeave2(bytes32 userId) {
         bytes32 id = userId;
         ssginAuth[id].flag = false;
     }
 }
