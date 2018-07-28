<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div align="center">
        <div style="width: 30%;">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <legend>Enter Your Credentials</legend>
                        <table>
                            <tr>
                                <td align="right">
                                    <font size="4em">       Personal No :-</font>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txt_uid" runat="server" ToolTip=" Personal No " Width="137px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_uid" Text="*Reqiured"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <font size="4em"> Password :-</font>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"
                                        ToolTip="Password" Width="138px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass"
                                        Text="*Reqiured"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>


                            </tr>
                            <%--<tr>
                <td></td>
                <td align="left">
                 <asp:DropDownList ID="drp_type" runat="server">
                    <asp:ListItem Text="Training Center" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Training Co-Ordinator" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Reporting Officer" Value="3"></asp:ListItem>
                    <asp:ListItem Text="HoD" Value="4"></asp:ListItem>
                    
                    </asp:DropDownList>
                </td>
        </tr>--%>
                            <tr>
                                <td></td>
                                <%--<td>
            
                <asp:Button ID="btn_login" runat="server" Text="LogIn" Font-Bold="True" 
                    ForeColor="#383E78" onclick="btn_login_Click" /> 
                   
                    
            </td>--%>
                                <td>
                                    <asp:Button ID="btnlogin" runat="server" Text="Login" Font-Bold="true" ForeColor="#383E78" OnClick="btnlogin_Click" />
                                </td>
                            </tr>
                        </table>
                        <asp:Label ID="lbl_error" runat="server" Text="Please Enter Correct Credentials" ForeColor="Red" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>

                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>


                    <div id="blur">&nbsp;</div>
                    <div id="progress" style="width: 50%; margin-top: auto;">
                        <font color="white" size="3px"><b>Please wait for Login.....</b></font>
                        <br />


                        <img src="Images/Desert.jpg" style="height: 67px; width: 297px" />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>


        <div align="left">
        </div>

    </div>
</asp:Content>
