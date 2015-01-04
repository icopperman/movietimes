<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="movietimes.aspx.cs" Inherits="movietimes.movietimes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="description" content="The description of my page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        label {width: 100px;}
        input {width: 100px;}
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width:100px;float: left;">date</div>
        <div style="width:100px;float: left;">zip</div>
        <div style="width:100px; float: left;">miles</div>
        <div style="width:100px; float: left;">time </div>
        <div style="width:100px; float: left;">duration</div>
        <div style="width:100px; float: left;">starts with</div>
        

        <br />
        <input type="text" id="viewdate" name="viewdate" runat="server"  />
        <input type="text" id="viewzip" name="azip" runat="server"  />
        <input type="text" id="amiles" name="amiles" runat="server"  />
        <input type="text" id="begintime" name="begintime" runat="server"  />
        <input type="text" id="dur" name="dur" runat="server"  />
        <input type="text" id="startWith" name="startWith" runat="server"  />
        <input type="text" id="timeZone" name="timeZone" runat="server" />
        <input type="submit" id="btnSubmit" name="btnSubmit" runat="server" value="Find Time" />
    </div>
    <div id="themovietimes" runat="server" />
    </form>
    <script type="text/javascript" >
        var eltz = document.getElementById("timeZone");
        var elViewDate = document.getElementById("viewdate");
        var elBeginTime = document.getElementById("begintime");
        var d = new Date();
        var n = d.getTimezoneOffset();
        var adate = d.getFullYear() + '-' + (d.getMonth() + 1) + '-' + d.getDate();
        eltz.value = n;
        elViewDate.value = adate;
        elBeginTime.value = d.getHours();
    </script> 
</body>
</html>
