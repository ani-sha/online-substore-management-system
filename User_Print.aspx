<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="User_Print.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Pending_Req" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	
	<style type="text/css">
		.auto-style1 {
			height: 672px;
			margin-top: 1.6em;
			width: 834px;
			margin-left: 40px;
		}
		.auto-style2 {
			font-size: large;
		}
		.auto-style3 {
			font-size: medium;
			width: 873px;
			height: 572px;
			margin-top: 0px;
		}
		.auto-style6 {
			width: 373px;
		}
		.auto-style9 {
			width: 458px;
			text-align: left;
			font-size: large;
		}
		.auto-style10 {
			font-size: medium;
			width: 984px;
			height: 730px;
		}
		.auto-style11 {
			width: 250px;
			font-size: large;
			text-align: left;
		}
		.auto-style14 {
			width: 90%;
			height: 790px;
		}
		.auto-style17 {
			width: 250px;
			height: 40px;
		}
		.auto-style18 {
			width: 458px;
			height: 40px;
		}
		.auto-style19 {
			width: 250px;
			font-size: large;
			height: 40px;
		}
		.auto-style20 {
			width: 250px;
			height: 41px;
		}
		.auto-style21 {
			width: 458px;
			height: 41px;
		}
		.auto-style22 {
			width: 250px;
			font-size: large;
			height: 41px;
		}
		.auto-style23 {
			width: 250px;
			font-size: large;
			height: 133px;
		}
		.auto-style24 {
			width: 458px;
			height: 42px;
		}
		.auto-style25 {
			width: 458px;
			height: 133px;
		}
		.auto-style26 {
			height: 1051px;
		}
	</style>
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<div align="center" class="auto-style26">
	<div class="auto-style14">
        <div class="auto-style10">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset class="auto-style1">
                        <legend style="text-align: center"> PRINT PENDING REQUISITION</legend>

						
					    <table class="auto-style3">
							<tr>
								<td class="auto-style17" align: right"><span class="auto-style2">REQUISITION NO.</span></td>
								<td align: left class="auto-style18">
									<asp:TextBox ID="txt_req_no" runat="server" OnTextChanged="TextBox2_TextChanged" ReadOnly="True" Width="500px" BorderStyle="None" AutoPostBack="True"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style19" align: right"><span class="auto-style24">PERSONAL</span><span class="auto-style6"> NO.</span></td>
								<td align: left class="auto-style18" >
									<asp:TextBox ID="txt_pno" runat="server" ReadOnly="True" Width="500px" BorderStyle="None" AutoPostBack="True"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style17" align: right"><span class="auto-style2">NAME</span></td>
								<td align: left class="auto-style18">
									<asp:TextBox ID="txt_name" runat="server" ReadOnly="True" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td align:="" class="auto-style17" right"="">MATERIAL CODE</td>
								<td align:="" class="auto-style18" left="">
									<asp:TextBox ID="text_mat_code" runat="server" Width="495px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style20" align: right"><span class="auto-style2">MATERIAL DESCRIPTION</span></td>
								<td align: left class="auto-style21">
									<asp:TextBox ID="text_mat_desc" runat="server" ReadOnly="True" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style22" align: right">REQUISITION DATE</td>
								<td class="auto-style21" align: left">
									<asp:TextBox ID="txt_req_dt" runat="server" ReadOnly="True" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style17" align: right"><span class="auto-style2">REQUESTED QUANTITY</span></td>
								<td align: left class="auto-style18">
									<asp:TextBox ID="txt_req_qty" runat="server" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style22" align: right">APPROVED QUANTITY</td>
								<td align: left class="auto-style21">
									<asp:TextBox ID="txt_app_qty" runat="server" Width="500px" BorderStyle="None"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td align:="" class="auto-style23" right"=""></td>
								<td align:="" class="auto-style25" left=""></td>
							</tr>
							<tr>
								<td align:="" class="auto-style11" right"=""><strong style="vertical-align: top">Sign of Requisitioner</strong></td>
								<td align:="" class="auto-style9" left=""><strong>Sign of Approving&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sign of Issuing Dept.&nbsp;&nbsp;&nbsp;&nbsp;
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp; Authority&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
							</tr>
						</table>

						
					 </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </div>


        <div align="left">
        </div>

    </div>
</div>

</asp:Content>



