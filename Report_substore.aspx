<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report_substore.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Report_substore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<style type="text/css">
		.auto-style1 {
			height: 80%;
			width:-2147483648%;
		}
		.auto-style2 {
			width: 100%;
			height: 115px;
		}
		.auto-style5 {
			width: 884px;
			text-align: right;
			margin-left: 0px;
		}
		.auto-style6 {
			width: 818px;
			text-align: right;
			margin-left: 0px;
		}
		.auto-style7 {
			text-align: left;
		}
		.auto-style8 {
			font-size: large;
		}
		.auto-style9 {
			font-size: large;
			text-align: right;
			width: 371px;
		}
		.auto-style10 {
			font-size: large;
			width: 371px;
		}
		.auto-style11 {
			width: 371px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


	<div align="center" class="auto-style8" >
		<div class="auto-style5">
        <div class="auto-style6">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset class="auto-style1">
                        <legend style="text-align: center"> REPORT </legend>

						<table class="auto-style2">
							<tr>
								<td class="auto-style9">PERSONAL NO&nbsp;</td>
								<td class="auto-style7">
									<asp:TextBox ID="text_pno" runat="server"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style9">FROM DATE</td>
								<td class="auto-style7">
									<asp:TextBox ID="from_date" runat="server" OnTextChanged="from_date_TextChanged"></asp:TextBox>
									

								</td>
							</tr>
							<tr>
								<td class="auto-style10">TO DATE</td>
								<td class="auto-style7">
									<asp:TextBox ID="to_date" runat="server"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td class="auto-style11">&nbsp;</td>
								<td class="auto-style7">
									<asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="SUBMIT" />
								</td>
							</tr>
						</table>
						<table>

							<tr>
								<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
