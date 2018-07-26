<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_Print.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Admin_Print" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<style type="text/css">
		.auto-style1 {
			width: 92%;
			height: 640px;
		}
		.auto-style2 {
			width: 50%;
			height: 134px;
			font-size: medium;
		}
		.auto-style3 {
			width: 92%;
			height: 561px;
			margin-top: 14px;
			margin-right: 19px;
		}
		.auto-style5 {
			width: 92%;
			height: 833px;
		}
		.auto-style6 {
			font-size: medium;
		}
		.auto-style9 {
			height: 63px;
		}
		.auto-style10 {
			font-size: medium;
			height: 806px;
		}
		.auto-style12 {
			font-size: medium;
			height: 34px;
		}
		.auto-style13 {
			height: 34px;
		}
		.auto-style16 {
			font-size: medium;
			height: 35px;
		}
		.auto-style17 {
			height: 35px;
		}
		.auto-style18 {
			font-size: medium;
			height: 33px;
		}
		.auto-style19 {
			height: 33px;
		}
		.auto-style20 {
			height: 30px;
		}
		.auto-style21 {
			font-size: medium;
			height: 32px;
		}
		.auto-style22 {
			height: 32px;
		}
		.auto-style23 {
			height: 63px;
			text-align: left;
		}
		.auto-style24 {
			margin-left: 1px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div align="center">
	<div class="auto-style5">
        <div class="auto-style10">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset class="auto-style1">
                        <legend style="text-align: center"> PRINT PENDING REQUISITION</legend>

						
					    <table class="auto-style3">
							<tr>
								<td class="auto-style20" align: right"><span class="auto-style2">REQUISITION NO.</span></td>
								<td align: left class="auto-style20">
									<asp:TextBox ID="txt_req_no" runat="server" OnTextChanged="TextBox2_TextChanged" ReadOnly="True" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style21" align: right"><span class="auto-style24">PERSONAL</span><span class="auto-style6"> NO.</span></td>
								<td align: left class="auto-style22" >
									<asp:TextBox ID="txt_pno" runat="server" ReadOnly="True" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style12" align: right"><span class="auto-style6">NAME</span></td>
								<td align: left class="auto-style13">
									<asp:TextBox ID="txt_name" runat="server" ReadOnly="True" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td align:="" class="auto-style12" right"="">MATERIAL CODE</td>
								<td align:="" class="auto-style13" left="">
									<asp:TextBox ID="text_mat_code" runat="server" CssClass="auto-style24" Width="488px" BorderColor="White" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style16" align: right"><span class="auto-style6">MATERIAL DESCRIPTION</span></td>
								<td align: left class="auto-style17">
									<asp:TextBox ID="text_mat_desc" runat="server" ReadOnly="True" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style12" align: right">REQUISITION DATE</td>
								<td class="auto-style13" align: left">
									<asp:TextBox ID="txt_req_dt" runat="server" ReadOnly="True" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style18" align: right"><span class="auto-style6">REQUESTED QUANTITY</span></td>
								<td align: left class="auto-style19">
									<asp:TextBox ID="txt_req_qty" runat="server" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style16" align: right">APPROVED QUANTITY</td>
								<td align: left class="auto-style17">
									<asp:TextBox ID="txt_app_qty" runat="server" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td align:="" class="auto-style6" right"="">&nbsp;</td>
								<td align:="" class="auto-style9" left="">&nbsp;</td>
							</tr>
							<tr>
								<td align:="" class="auto-style6" right"="">SIGN OF REQUISITIONER</td>
								<td align:="" class="auto-style23" left="">&nbsp;&nbsp;&nbsp; SIGN OF APPROVING AUTHORITY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIGN OF ISSUING DEPT&nbsp;</td>
							</tr>
						</table>
						
						
					 </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>


                    
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>


        <div align="left">
        </div>

    </div>
</div>
</asp:Content>
