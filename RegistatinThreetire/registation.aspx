<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registation.aspx.cs" Inherits="RegistatinThreetire.registation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                fist Name <asp:TextBox ID="txtfname" runat="server"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="Rfvfname" runat="server" ControlToValidate="txtfname" ForeColor="Red" ErrorMessage="pls enter fist name">

</asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="Revfname" runat="server" ControlToValidate="txtfname" ValidationExpression="^[a-zA-Z]+$" ErrorMessage="Only Alphabets allowed" ForeColor="Orange">

 </asp:RegularExpressionValidator><br />
          
             last Name <asp:TextBox ID="txtname" runat="server"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtname" ForeColor="Red" ErrorMessage="pls enter last name">

</asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="revname" runat="server" ControlToValidate="txtname" ValidationExpression="^[a-zA-Z]+$" ErrorMessage="Only Alphabets allowed" ForeColor="Orange">

 </asp:RegularExpressionValidator><br />

         email<asp:TextBox ID="txtemail" runat="server" ></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ErrorMessage="pls enter email" ForeColor="Red">

            </asp:RequiredFieldValidator>

     <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="txtemail" ValidationExpression="^[a-zA-Z0-9 ]+@[a-zA-Z0-9]+.[a-zA-Z]{3}$" ErrorMessage="pls enter valid email" ForeColor="Orange">
        
            </asp:RegularExpressionValidator><br />
            gender<asp:RadioButtonList ID="radiogen" runat="server">
                <asp:ListItem Value="">-select-</asp:ListItem>
                <asp:ListItem Value="male">male</asp:ListItem>
                <asp:ListItem Value="female">female</asp:ListItem>
                  </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvgen" runat="server" ControlToValidate="radiogen" ErrorMessage="pls select gender" ForeColor="Red">

            </asp:RequiredFieldValidator><br />
            date of birth<asp:TextBox ID="txtdob" runat="server" TextMode="Date" ></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvdob" runat="server" ControlToValidate="txtdob" ErrorMessage="pls enter dob" ForeColor="Red">
                </asp:RequiredFieldValidator><br />
            course<asp:DropDownList ID="ddlcourse" runat="server">
                <asp:ListItem Value="">-select-</asp:ListItem>
                <asp:ListItem Value=".net">.net</asp:ListItem>
                <asp:ListItem Value="java">java</asp:ListItem>
                <asp:ListItem Value="python">python</asp:ListItem>
                  </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvcourse" runat="server" ControlToValidate="ddlcourse" ErrorMessage="pls selct course" ForeColor="Red">

            </asp:RequiredFieldValidator><br />
            password<asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvpass" runat="server" ControlToValidate="txtpass" ErrorMessage="pls enter password" ForeColor="Red">

            </asp:RequiredFieldValidator><br />
            confirm password<asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvcpass" runat="server" ControlToValidate="txtcpass" ErrorMessage="plas enter confirm password" ForeColor="Red">

            </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvpass" runat="server" ControlToValidate="txtcpass" ControlToCompare="txtpass" ErrorMessage="passowrd not matched pls try again" ForeColor="Orange">

            </asp:CompareValidator><br />
          select hobbies  <asp:CheckBoxList ID="chkhabbies" runat="server">
                <asp:ListItem Value="playing">playing</asp:ListItem>
                <asp:ListItem Value="reading">reading</asp:ListItem>
                <asp:ListItem Value="traveling">Traveling</asp:ListItem>
                <asp:ListItem Value="watching movies">watching movies</asp:ListItem>
            </asp:CheckBoxList>

            phone no<asp:TextBox ID="txtphn" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvphn" runat="server" ControlToValidate="txtphn" ForeColor="Red" ErrorMessage="pls enter phone number">

        </asp:RequiredFieldValidator>
            
     <asp:RegularExpressionValidator ID="revphn" runat="server" ControlToValidate="txtphn" ValidationExpression="^[0-9]{10}$" ErrorMessage="pls enter 10 digits only" ForeColor="Orange">
        
            </asp:RegularExpressionValidator><br />

         address<asp:TextBox ID="txtadd" runat="server"></asp:TextBox><br />

            <asp:RequiredFieldValidator ID="Rfvadd" runat="server" ControlToValidate="txtadd" ForeColor="Red" ErrorMessage="pls enter Address">

</asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="Revadd" runat="server" ControlToValidate="txtadd" ValidationExpression="^[a-zA-z]+$" ErrorMessage="Only Alphabets allowed" ForeColor="Orange">

 </asp:RegularExpressionValidator><br />
     <asp:Button ID="btninsert" runat="server" Text="Insert" OnClick="btninsert_Click" /><br />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
