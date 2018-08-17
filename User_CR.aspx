<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="User_CR.aspx.cs" Inherits="SYSTEMS_SUBSTORE.User_CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">



	
	
	<style type="text/css">
		.auto-style1 {
			width: 688px;
		}
		.auto-style2 {
			width: 826px;
		}
		.auto-style3 {
			width: 30px;
		}
		.auto-style5 {
			width: 95%;
		}
		.auto-style6 {
			width: 94%;
		}
		.auto-style8 {
			width: 92%;
		}
		.auto-style12 {
			width: 49%;
		}
		.auto-style15 {
			width: 49%;
			font-size: medium;
		}
		.auto-style16 {
			width: 49%;
			text-align: right;
		}
		.auto-style17 {
			width: 49%;
			font-size: medium;
			text-align: right;
		}
		.auto-style19 {
			width: 30px;
			height: 31px;
		}
		.auto-style20 {
			width: 49%;
			font-size: medium;
			text-align: right;
			height: 31px;
		}
		.auto-style21 {
			font-size: large;
		}
		.auto-style22 {
			width: 91%;
			font-size: large;
		}
	</style>

	
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >

	<div align="center" class="auto-style8" >
		<div class="auto-style5">
        <div class="auto-style6">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset class="auto-style2">
                        <legend style="text-align: center"> CREATE REQUISITION </legend>

						<table class="auto-style1">
							<tr>
								<td class="auto-style16"><span class="auto-style21">REQUISITION NO</span></td>
								<td class="auto-style3">
									<strong>
									<asp:Label ID="Label2" runat="server" Text="Label" Width="52px"></asp:Label>
									</strong>
								</td>
							</tr>
							<tr>
								<td align: right class="auto-style16"><strong>&nbsp;</strong><span class="auto-style22">MATERIAL DESCRIPTION</span><strong style="text-align: right; padding-right: 4px"> &nbsp;</strong></td>
								<td align: left class="auto-style3">
									<asp:DropDownList ID="text_matdesc" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="345px" Height="18px">
									</asp:DropDownList>
								</td>
							</tr>
							<%--<tr>
								<td class="auto-style16"><span class="auto-style21">&nbsp;</span><span class="auto-style9"><span class="auto-style21">LOCATION</span><span class="auto-style14">&nbsp; </span><strong>&nbsp;</strong></span></td>
								<td align: left class="auto-style3">
									<asp:DropDownList ID="loc" runat="server" CssClass="auto-style18" style="margin-left: 2px" Width="176px">
										<asp:ListItem>System</asp:ListItem>
										<asp:ListItem>Central</asp:ListItem>
									</asp:DropDownList>
								</td>
							</tr>--%>
							<caption>
								<tr>
									<td class="auto-style16"><span class="auto-style22">&nbsp;MATERIAL CODE</span>&nbsp;
										</td>
									<td align: left class="auto-style3">
										<asp:TextBox ID="mcode" runat="server" ReadOnly="True"></asp:TextBox>
									</td>
								</tr>
								<tr>
									<td class="auto-style17"><span class="auto-style21">&nbsp;STOCK QUANTITY</span> &nbsp;</td>
									<td align: left class="auto-style3">
										<asp:TextBox ID="mstock" runat="server" ReadOnly="True"></asp:TextBox>
									</td>
								</tr>
								<tr>
									<td class="auto-style20">&nbsp;<span class="auto-style21">REQUIRED QUANTITY&nbsp;</span>
									</td>
									<td align: left class="auto-style19">
										<asp:TextBox ID="mqty" runat="server"></asp:TextBox>
										<strong>
										<asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
										</strong>
									</td>
								</tr>
								<tr>
									<td></td>
									<td>
										&nbsp;</td>
								</tr>
								<tr>
									<td class="auto-style12">
										<asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
									</td>
									<td align: left class="auto-style3">
										<asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click" Text="SUBMIT" Width="129px" />
									</td>
								</tr>
							</caption>
						</table>

						
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>


                    <div id="blur">&nbsp;</div>
                    <div id="progress" style="margin-top: auto;" style="width: 50%;">
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
		</div>

</asp:Content>
