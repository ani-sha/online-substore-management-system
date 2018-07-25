<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_Central.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Admin_Central" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<style type="text/css">
		.auto-style1 {
			text-align: left;
		}
		.auto-style2 {
			height: 26px;
		}
		.auto-style3 {
			text-align: left;
			height: 26px;
		}
		.auto-style4 {
			height: 100%;
			margin-bottom: 18em;
		}
		.auto-style5 {
			height: 761px;
		}
		.auto-style6 {
			height: 100%;
			margin-bottom: 18em;
			font-size: large;
		}
		.auto-style7 {
			text-align: left;
			height: 26px;
			width: 795px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<div align="center" class="auto-style5" >
        <div class="auto-style6">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset class="auto-style4">
                        <legend style="text-align: center"> APPROVING REQUISITION</legend>
						<table class="auto-style7">
							<tr>
								<td class="auto-style6">SIV NO</td>
								<td class="auto-style1"><asp:TextBox ID="text_siv" runat="server" Width="194px" CssClass="auto-style56" OnTextChanged="text_rno_TextChanged" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style17"></td>
							</tr>
							<tr>
								<td class="auto-style4">MATERIAL DESCRIPTION</td>
								<td class="auto-style1">
									<asp:DropDownList ID="text_desc" runat="server" AutoPostBack="True" OnSelectedIndexChanged="text_desc_SelectedIndexChanged" Width="453px" Height="25px">
									</asp:DropDownList>
								</td>
								<td class="auto-style17">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style4">MATERIAL CODE</td>
								<td class="auto-style1"><asp:TextBox ID="text_mcode" runat="server" Width="450px" CssClass="auto-style55" OnTextChanged="text_mcode_TextChanged" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style25"></td>
							</tr>
							<tr>
								<td class="auto-style4">USER PERSONAL NO</td>
								<td class="auto-style1"><asp:TextBox ID="text_userpno" runat="server" CssClass="auto-style36" Width="450px" OnTextChanged="text_userpno_TextChanged" AutoPostBack="True" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style25"></td>
							</tr>
							<tr>
								<td class="auto-style4">NAME</td>
								<td class="auto-style1">
									<asp:TextBox ID="text_username" runat="server" Width="453px" ReadOnly="True" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style29"></td>
							</tr>
							<tr>
								<td class="auto-style4">DEPARTMENT CODE</td>
								<td class="auto-style1">
									<asp:TextBox ID="text_userdpt" runat="server" Width="450px" OnTextChanged="text_userdpt_TextChanged" ReadOnly="True" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style29">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style2">&nbsp;REQUISITIONER PERSONAL NO </td>
								<td class="auto-style3"><asp:TextBox ID="text_reqpno" runat="server" CssClass="auto-style37" Width="450px" OnTextChanged="text_reqpno_TextChanged" AutoPostBack="True" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style2"></td>
							</tr>
							<tr>
								<td class="auto-style4">NAME</td>
								<td class="auto-style1">
									<asp:TextBox ID="text_reqname" runat="server" Width="449px" ReadOnly="True" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style13">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style4">DEPARTMENT CODE</td>
								<td class="auto-style1">
									<asp:TextBox ID="text_reqdpt" runat="server" Width="443px" OnTextChanged="text_reqdpt_TextChanged" ReadOnly="True" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style13">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style4">APPROVAL DATE</td>
								<td class="auto-style1">
									<asp:TextBox ID="txt_appdate" runat="server" OnTextChanged="txt_appdate_TextChanged" ReadOnly="True" Width="438px" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style13">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style4">TONER RETURNED OR NOT?</td>
								<td class="auto-style1">
									<asp:DropDownList ID="tonner" runat="server" OnSelectedIndexChanged="tonner_SelectedIndexChanged" Width="100px" Height="25px">
										<asp:ListItem>Yes</asp:ListItem>
									<asp:ListItem>No</asp:ListItem>
									</asp:DropDownList>
								</td>
								<td class="auto-style13">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style4">APPROVED QUANTITY</td>
								<td class="auto-style1">
									<asp:TextBox ID="text_appqty" runat="server" OnTextChanged="text_appqty_TextChanged" Width="440px" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style13">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style4">&nbsp;</td>
								<td class="auto-style1">
									<asp:Button ID="btn_submit" runat="server" Text="SUBMIT" Width="126px" OnClick="btn_submit_Click" Height="25px" />
									<strong>
									<asp:Label ID="lbl_msg" runat="server" CssClass="auto-style56" ForeColor="Green" style="font-size: medium" Width="128px" Height="25px"></asp:Label>
									</strong>
								</td>
								<td class="auto-style13">&nbsp;</td>
							</tr>
						</table>


					    </fieldset>
                	</ContentTemplate>
            </asp:UpdatePanel>

      </div>
  </div>

</asp:Content>
