<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DigitalPartnerStudio System per CRD/LWS</title>
        <link rel="stylesheet" href="RESOURCES/font-awesome-4.7.0/css/font-awesome.css">
        <link rel="stylesheet" href="KATANA/katana.css">
        <link rel="stylesheet" href="index.css">
        <link rel="icon" href="/DPS/RESOURCES/TRANS_LOGO.png" type="image/png"/>
    </head>
    
    <body onload="APP.logout();">
        
        <div id="header">DigitalPartnerStudio System per CRD/LWS</div>
        
        <!--div class="BigButton"-->
        <div id="credentials">
            <span id="credentialsMessage">INSERISCI LE TUE CREDENZIALI</span>
            <input id="username" placeholder="username" onkeydown="APP.usernameOnKeyDown(event);">
            <input id="password" type="password" placeholder="password" onkeydown="APP.passwordOnKeyDown(event);">
            <input type="button" value="LOGIN" onclick="APP.login();">
        </div>
        
        <div id="waitScreen">
            <span>STO CONTROLLANDO LE CREDENZIALI...</span>
        </div>
    </body>
    
    <script>
        APP = {};
        
        APP.usernameOnKeyDown=(event)=>
        {
            if(event.keyCode===13) document.getElementById("password").focus();
        };

        APP.passwordOnKeyDown=(event)=>
        {
            if(event.keyCode===13) APP.login();
        };

        APP.logout=()=>
        {
            window.fetch("/DPS/api/logout");
        };

        APP.login=()=>
        {
            const username = document.getElementById("username").value;
            const password = document.getElementById("password").value;
            
            window.fetch("/DPS/api/login?&username="+username+"&password="+password)
                .then(response=>response.json())
                .then(jsonResponse=>
                {
                    if(jsonResponse.success)
                        window.open("/DPS/gui/dashboard.jsp","_self");
                    else
                        document.getElementById("credentialsMessage").innerHTML = "CREDENZIALI ERRATE";
                });    
        };
    </script>
</html>
