<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mat_Master.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Mat_Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<style type="text/css">
		.auto-style1 {
			width: 321px;
		}
		.auto-style2 {
			width: 63%;
		}
		.auto-style3 {
			width: 428px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div align="center">
        <div class="auto-style2">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <legend>Material Master</legend>
                        <table>
                            <tr>
                                <td align="right">
                                    <font size="4em">       Material Code:-</font>
                                </td>
                                <td align="left" class="auto-style3">
                                    <asp:TextBox ID="txt_mat_cd" runat="server" OnTextChanged="txt_mat_cd_TextChanged" Width="137px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_mat_cd" Text="*Required"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
									<asp:Label ID="lbl_message" runat="server" Text="Material Code Already Exists" ForeColor="Red" Font-Bold="true" Font-Size="medium" Visible="false" ></asp:Label>
								</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="auto-style3"></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <font size="4em"> Material Description :-</font>
                                </td>
                                <td align="left" class="auto-style3">
                                    <asp:TextBox ID="txt_mat_des" runat="server"
                                        ToolTip="Password" Width="138px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_mat_des"
                                        Text="*Required"
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
                                <td class="auto-style3">
                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="true" ForeColor="#383E78" OnClick="btnsubmit_Click" />
                                </td>
                            </tr>
                        </table>
                        <asp:Label ID="lbl_submit" runat="server" Text="Correct Credentials Submitted" ForeColor="Red" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>

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
