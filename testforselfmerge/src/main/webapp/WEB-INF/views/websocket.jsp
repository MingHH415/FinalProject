<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="/jquery/dist/jquery.js"></script>
<script type="text/javascript" src="stomp.js"></script>
<script type="text/javascript" src="/sockjs-client-master/dist/sockjs.js"></script>

</head>
<script>
    var stompClient = null;
    
    $(function() {
        startServer();
    })
    
    function startServer() {
        var url = 'http://localhost:8090/testfinalproject/webServer'
        var socket = new SockJS(url);
        stompClient = Stomp.over(socket);
        stompClient.connect({}, function(frame) {
            //初始化  
            stompClient.subscribe('/msg/init/' + userId, function (initData) {  
                console.log(initData);  
                var body = JSON.parse(initData.body);  
                var chat = body.chat;  
                chat.forEach(function(item) {  
                    showChat(item);  
                });  
            });  
            //广播回调
            stompClient.subscribe('/topic/live', function(message){
                var json = JSON.parse(message.body);
                showChat(json);
            });
            //广播方式实现点对点回调
            stompClient.subscribe('/topic/point' + userId, function (message) {  
                var json = JSON.parse(message.body); 
                showChat(json);
            });
            //点对点方式回调
            stompClient.subscribe('/user/' + userId + '/message', function(message){
                 var json = JSON.parse(message.body);
                 showChat(json);
            });
        });
        //强制关闭浏览器断开连接
        window.onbeforeunload = function() {
            if (stompClient != null) {
                stompClient.disconnect();
            }
        }
    }
    
    function closeServer() {
        if (stompClient != null) {
            stompClient.disconnect();
        }
    }
    
    function sendTopic() {
        var input = $('#topic_input');
        var inputValue = input.val();
        input.val("");
        stompClient.send("/msg/live", {}, JSON.stringify({
            'name' : encodeURIComponent('廣播'),
            'msg' : encodeURIComponent(inputValue)
        }));
    }
    
    function sendPoint() {
        var input = $('#point_input');  
        var inputValue = input.val();  
        input.val("");  
        stompClient.send("/msg/point", {}, JSON.stringify({  
            'name' : encodeURIComponent('點對點'),
            'msg': encodeURIComponent(inputValue),  
            'coordinationId': 1  
        }));  
    }
    
    function sendUser() {
        var input = $('#user_input');  
        var inputValue = input.val();  
        input.val("");  
        stompClient.send("/msg/message", {}, JSON.stringify({  
            'name' : encodeURIComponent('廣播點對點'),
            'msg': encodeURIComponent(inputValue),  
            'coordinationId': 'a'
        }));  
    }
    
    function showChat(message) {
        var value = decodeURIComponent(message.name) + ':' + decodeURIComponent(message.msg) + '\n';
        var content = $("#topic_content").val() + value;
        $("#topic_content").val(content);
    }
</script>
<body>
    <div>
    <input id="topic_input" type="text">
    <input type="button" onclick="sendTopic();" value="廣播">
    </div>
    
    <div>
    <input id="point_input" type="text">
    <input type="button" onclick="sendPoint();" value="廣播點對點">
    </div>
    
    <div>
    <input id="user_input" type="text">
    <input type="button" onclick="sendUser();" value="點對點">
    </div>
    
    <div>
    <textarea id="topic_content" style="width:200px;height:80px;"></textarea>
    </div>
</body>
</html>