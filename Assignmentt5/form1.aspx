<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 126px;
            top: 121px;
            position: absolute;
            height: 21px;
        }
        .auto-style2 {
            z-index: 1;
            left: 259px;
            top: 124px;
            position: absolute;
            height: 19px;
            width: 203px;
        }
        .auto-style3 {
            z-index: 1;
            left: 476px;
            top: 128px;
            position: absolute;
            height: 20px;
            width: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
   
    

       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
    <asp:TextBox ID="txtusername" runat="server" 
             ontextchanged="TextBox1_TextChanged" 
        AutoPostBack="True" CssClass="auto-style1"></asp:TextBox>

    <asp:Label ID="lblmessage" runat="server" 
        style="z-index: 1; left: 474px; top: 138px; position: absolute; height: 19px; width: 203px" 
        Text="Label"></asp:Label>
        </ContentTemplate>
        </asp:UpdatePanel>
    
        <p>
        <asp:Image ID="Imagemessage" runat="server" Height="17px" 
        Width="17px" CssClass="auto-style3" />
        </p>
        <p>
            &nbsp; Enter Username:&nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
            &nbsp;Enter Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
        </p>
    
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/WebForm2.aspx">Next</asp:LinkButton>
        </p>
    
    </form>
    </body>
</html>