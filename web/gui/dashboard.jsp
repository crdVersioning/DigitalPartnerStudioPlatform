<%
    if(request.getSession().getAttribute("user_id")==null) throw new Exception("not authenticated");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DigitalPartnerStudio System per CRD/LWS</title>
        <link rel="stylesheet" href="RESOURCES/font-awesome-4.7.0/css/font-awesome.css">
        <link rel="stylesheet" href="KATANAkatana.css">
        <link rel="stylesheet" href="common.css">
        <link rel="stylesheet" href="dashboard.css">
        <link rel="icon" href="/DPS/RESOURCES/TRANS_LOGO.png" type="image/png"/>
    </head>
    <body>
        <span id="logout" onclick="window.open('/DPS/index.jsp','_self');">ESCI</span>
        
        <div id="header">DigitalPartnerStudio System per CRD/LWS</div>
        
        <div class="BigButton" onclick="window.alert('MODULO IN TRASFERIMENTO')");">
            <span class="Label"><i class="fa fa-money fa-fw" aria-hidden="true"></i> DigInvoice</span>
            <br><br>FATTURAZIONE E PREFATTURAZIONE
            <span class="Status Inactive"><i class="fa fa-thumbs-up fa-fw" aria-hidden="true"></i> INATTIVO</span>
            <!--span class="Status Inactive"><i class="fa fa-thumbs-up fa-fw" aria-hidden="true"></i> IN MANUTENZIONE</span-->
            <span class="Run">ACCEDI <i class="fa fa-play fa-fw" aria-hidden="true"></i></span>
        </div>     
        
        <div class="BigButton" onclick="window.alert('MODULO IN TRASFERIMENTO')");">
            <span class="Label"><i class="fa fa-money fa-fw" aria-hidden="true"></i> FlowControl</span>
            <br><br>CONTROLLO FLUSSO
            <span class="Status Inactive"><i class="fa fa-thumbs-up fa-fw" aria-hidden="true"></i> INATTIVO</span>
            <!--span class="Status Inactive"><i class="fa fa-thumbs-up fa-fw" aria-hidden="true"></i> IN MANUTENZIONE</span-->
            <span class="Run">ACCEDI <i class="fa fa-play fa-fw" aria-hidden="true"></i></span>
        </div>  
    </body>
</html>
