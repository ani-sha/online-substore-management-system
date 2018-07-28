<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dept_substore.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Dept_substore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<style type="text/css">
		.auto-style1 {
			height: 542px;
		}
		.auto-style2 {
			height: 174px;
			width: 676px;
			margin-left: 169px;
		}
		.auto-style3 {
			height: 1066px;
		}
		.auto-style5 {
			text-align: left;
		}
		.auto-style6 {
			text-align: right;
		}
		.auto-style7 {
			text-align: right;
			font-size: large;
			width: 461px;
		}
		.auto-style8 {
			text-align: left;
			font-size: large;
		}
		.auto-style9 {
			font-size: large;
			width: 461px;
		}
		.auto-style10 {
			width: 461px;
		}
		</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<div align="center" class="auto-style3" >
		<div class="auto-style5">
        <div class="auto-style6">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset class="auto-style1">
                        <legend style="text-align: center">DEPARTMENT REPORT </legend>

						<table class="auto-style2">
							<tr>
								<td class="auto-style9">DEPARTMENT NAME </td>
								<td class="auto-style8">
									<asp:DropDownList ID="text_dept" runat="server" AutoPostBack="True" Height="25px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px">
									</asp:DropDownList>
								</td>
							</tr>
							<tr>
								<td class="auto-style9">FROM DATE</td>
								<td class="auto-style8">
									<asp:TextBox ID="from_date" runat="server" OnTextChanged="from_date_TextChanged" Height="25px" Width="200px"></asp:TextBox>
									

								</td>
							</tr>
							<tr>
								<td class="auto-style7">TO DATE</td>
								<td class="auto-style8">
									<asp:TextBox ID="to_date" runat="server" Height="25px" OnTextChanged="to_date_TextChanged" Width="200px"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style10">&nbsp;</td>
								<td class="auto-style8">
									<asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="SUBMIT" Height="25px" Width="100px" />
								</td>
							</tr>
							<tr>
								<td class="auto-style10">&nbsp;</td>
								<td class="auto-style8"><strong>
									<asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Width="200px"></asp:Label>
									</strong></td>
							</tr>
						</table>
						<table>

							<tr>
								<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="80%">
									<FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
									<HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
									<PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
									<RowStyle BackColor="White" ForeColor="#003399" />
									<SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
									<SortedAscendingCellStyle BackColor="#EDF6F6" />
									<SortedAscendingHeaderStyle BackColor="#0D4AC4" />
									<SortedDescendingCellStyle BackColor="#D6DFDF" />
									<SortedDescendingHeaderStyle BackColor="#002876" />
								</asp:GridView>
							</tr>
						</table>

						</fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
           

</div>
			</div>
		</div>



</asp:Content>
