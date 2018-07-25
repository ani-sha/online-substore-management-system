<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_app.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Admin_app" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

	

	<style type="text/css">
		.auto-style1 {
			text-align: left;
		}
		.auto-style2 {
			text-align: right;
		}
		.auto-style3 {
			width: 1035px;
			height: 377px;
			margin-top: 34px;
		}
		.auto-style5 {
			width: 1234px;
		}
		.auto-style6 {
			width: 1085px;
		}
		.auto-style8 {
			width: 331px;
			font-size: large;
		}
		.auto-style10 {
			text-align: left;
			height: 34px;
		}
		.auto-style11 {
			height: 34px;
		}
		.auto-style13 {
			text-align: left;
			height: 36px;
		}
		.auto-style14 {
			width: 542px;
			font-size: large;
			height: 34px;
		}
		.auto-style15 {
			width: 542px;
			font-size: large;
		}
		.auto-style16 {
			width: 542px;
		}
		.auto-style17 {
			font-size: large;
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
                    <fieldset class="auto-style2">
                        <legend style="text-align: center" class="auto-style17"> APPROVING REQUISITION</legend>
						<table class="auto-style3">
							<tr>
								<td class="auto-style14">APPROVAL REQUISITION NO :-</td>
								<td class="auto-style10"><asp:TextBox ID="text_rno" runat="server" Width="171px" CssClass="auto-style56" OnTextChanged="text_rno_TextChanged" Height="25px" AutoPostBack="True"></asp:TextBox>
									<asp:Button ID="btn_clk" runat="server" CssClass="auto-style58" OnClick="Button1_Click" Text="DISPLAY" Width="126px" style="margin-left: 52px" />
								</td>
								<td class="auto-style11"></td>
							</tr>
							<tr>
								<td class="auto-style14">MATERIAL CODE :-</td>
								<td class="auto-style10"><asp:TextBox ID="text_mcode" runat="server" Width="450px" CssClass="auto-style55" ReadOnly="True" Height="25px" AutoPostBack="True"></asp:TextBox>
								</td>
								<td class="auto-style11"></td>
							</tr>
							<tr>
								<td class="auto-style15">MATERIAL DESCRIPTION :-</td>
								<td class="auto-style1"><asp:TextBox ID="text_mdesc" runat="server" CssClass="auto-style35" Width="450px" ReadOnly="True" Height="25px" AutoPostBack="True"></asp:TextBox>
								</td>
								<td class="auto-style27"></td>
							</tr>
							<tr>
								<td class="auto-style15">PERSONAL NO :-</td>
								<td class="auto-style1"><asp:TextBox ID="text_pno" runat="server" CssClass="auto-style36" Width="450px" ReadOnly="True" Height="25px" AutoPostBack="True"></asp:TextBox>
								</td>
								<td class="auto-style25"></td>
							</tr>
							<tr>
								<td class="auto-style15">REQUISITION DATE :-</td>
								<td class="auto-style1"><asp:TextBox ID="text_rq_date" runat="server" CssClass="auto-style42" Width="450px" ReadOnly="True" Height="25px" AutoPostBack="True"></asp:TextBox>
								</td>
								<td class="auto-style29"></td>
							</tr>
							<tr>
								<td class="auto-style15">STOCK QUANTITY :-</td>
								<td class="auto-style1">
									<asp:TextBox ID="text_stock" runat="server" Width="450px" Height="25px" AutoPostBack="True"></asp:TextBox>
								</td>
								<td class="auto-style29">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style15">REQUESTED QUANTITY :-</td>
								<td class="auto-style1"><asp:TextBox ID="text_rq_qty" runat="server" CssClass="auto-style37" Width="450px" ReadOnly="True" Height="25px" AutoPostBack="True"></asp:TextBox>
								</td>
								<td class="auto-style31"></td>
							</tr>
							<tr>
								<td class="auto-style15">APPROVED QUANTITY :-</td>
								<td class="auto-style1"><asp:TextBox ID="text_app_qty" runat="server" CssClass="auto-style35" Width="450px" OnTextChanged="text_app_qty_TextChanged" Height="25px"></asp:TextBox>
								</td>
								<td class="auto-style13">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style16">&nbsp;</td>
								<td class="auto-style1">
									<asp:Button ID="btn_submit" runat="server" Text="SUBMIT" Width="126px" OnClick="btn_submit_Click" Height="25px" />
									<strong>
									<asp:Label ID="lbl_msg" runat="server" CssClass="auto-style56" ForeColor="Green" Height="25px" Width="200px"></asp:Label>
									</strong>
								</td>
								<td class="auto-style13">&nbsp;</td>
							</tr>
							<tr>
								<td class="auto-style16">&nbsp;</td>
								<td class="auto-style1"><strong>
									<asp:Label ID="lbl_msg1" runat="server" ForeColor="Red" Height="25px" Width="200px"></asp:Label>
									</strong></td>
								<td class="auto-style13">&nbsp;</td>
							</tr>
						</table>
				

                   </fieldset>





					    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>


                    <div id="blur" class="auto-style8">&nbsp;</div>
                    <div id="progress" style="margin-top: auto;" style="width: 50%;">
                        <font color="white" size="3px"><b>Please wai<img src="Images/Desert.jpg" style="height: 67px; width: 297px" />t for Login.....</b></font>
                        <br />


                        &nbsp;</div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>


        <div align="left">
        </div>


</div>

</asp:Content>
