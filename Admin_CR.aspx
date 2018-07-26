<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_CR.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Admin_CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<style type="text/css">
		.auto-style3 {
			width: 94%;
			margin-top: 16px;
		}
		.auto-style5 {
			width: 495px;
		}
		.auto-style6 {
			width: 495px;
			text-align: right;
			height: 35px;
		}
		.auto-style18 {
			margin-left: 0px;
		}
		.auto-style19 {
			width: 495px;
			text-align: right;
			height: 35px;
			font-size: medium;
		}
		.auto-style21 {
			height: 340px;
		}
		.auto-style26 {
			width: 495px;
			text-align: right;
			height: 33px;
		}
		.auto-style27 {
			height: 33px;
		text-align: left;
	}
		.auto-style31 {
			text-align: left;
		}
		.auto-style33 {
			text-align: left;
			height: 35px;
		}
		.auto-style34 {
			width: 100%;
			height: 233px;
		}
		.auto-style35 {
			margin-left: 12px;
			font-size: medium;
		}
		.auto-style36 {
			font-size: large;
		}
		.auto-style37 {
			font-size: large;
			font-weight: bold;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<div align="center">
        <div class="auto-style3">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset class="auto-style21">
                        <legend style="text-align: center" class="auto-style37"> <strong>CREATE REQUISITION </strong> </legend>




					    <table class="auto-style34">
							<tr>
								<td align: right class="auto-style26">&nbsp;<span class="auto-style36">REQUISITION NO</span>&nbsp;</td>
								<td class="auto-style27"><strong>
									<asp:Label ID="Label2" runat="server" CssClass="auto-style35" Text="Label" Width="60px" Height="25px"></asp:Label>
									</strong></td>
							</tr>
							<tr>
								<td class="auto-style6"><span class="auto-style36">&nbsp;MATERIAL DESCRIPTION</span>&nbsp; </td>
								<td class="auto-style33">
									<asp:DropDownList ID="text_matdesc" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="240px">
									</asp:DropDownList>
								</td>
							</tr>
							<tr>
								<td class="auto-style6"><span class="auto-style36"><strong>&nbsp;</strong>MATERIAL CODE</span>&nbsp;
									</td>
								<td class="auto-style33">
									<asp:TextBox ID="mcode" runat="server" CssClass="auto-style18" ReadOnly="True" Width="168px"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style19"><strong>&nbsp;</strong><span class="auto-style36">STOCK QUANTITY</span><strong> &nbsp;</strong>
									</td>
								<td class="auto-style33">
									<asp:TextBox ID="mstock" runat="server" CssClass="auto-style18" ReadOnly="True" Width="125px"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style19"><strong>&nbsp;</strong><span class="auto-style36">REQUIRED QUANTITY</span><strong>&nbsp; </strong>
								</td>
								<td class="auto-style33">
									<asp:TextBox ID="mqty" runat="server" CssClass="auto-style18" Width="133px"></asp:TextBox>
									<strong>
									<asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Width="200px"></asp:Label>
									</strong>
								</td>
							</tr>
							<tr>
								<td class="auto-style5">
									<asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
								</td>
								<td class="auto-style31">
									<asp:Button ID="Button1" runat="server" CssClass="auto-style18" OnClick="Button1_Click" Text="SUBMIT" Width="129px" />
								</td>
							</tr>
						</table>




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
