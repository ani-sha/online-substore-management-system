<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_Status.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Admin_Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<style type="text/css">
		.auto-style1 {
			font-size: large;
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
                    <fieldset class="auto-style1">
                        <legend style="text-align: center"> USER STATUS</legend>

						<table class="auto-style3">
							 <tr>
								 <td class="auto-style16"></td>
								 <td class="auto-style4" style="padding-bottom: 4px"><span class="auto-style1">PERSONAL NO</span>
									 <asp:TextBox ID="text_pno" runat="server" ReadOnly="True" Width="320px" Height="23px" CssClass="auto-style41" style="margin-left: 26px" OnTextChanged="text_pno_TextChanged"></asp:TextBox>
								 </td>
								 <td class="auto-style17"></td>
							 </tr>
							 <tr>
								 <td class="auto-style18"></td>
								 <td class="auto-style4" style="padding-bottom: 4px"><span class="auto-style10">NAME</span>
									 <asp:TextBox ID="text_name" runat="server" CssClass="auto-style11" Width="320px" Height="23px" style="margin-left: 98px" OnTextChanged="text_name_TextChanged" ReadOnly="True"></asp:TextBox>
								 </td>
								 <td class="auto-style19"></td>
							 </tr>
							 <tr>
								 <td class="auto-style18">&nbsp;</td>
								 <td class="auto-style4" style="padding-bottom: 4px">
									 ENTER REQUISITION NO<asp:TextBox ID="text_no" runat="server" CssClass="auto-style37" Width="148px"></asp:TextBox><asp:Button ID="Button1" runat="server" CssClass="auto-style38" Text="PRINT REQUISITION" Width="200px" OnClick="Button1_Click" style="margin-left: 21px" />
								 </td>
								 <td class="auto-style19">&nbsp;</td>
							 </tr>
							 <tr>
								 <td class="auto-style18">&nbsp;</td>
								 <td class="auto-style4" style="padding-bottom: 4px"><strong>
									 <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Width="200px"></asp:Label>
									 </strong></td>
								 <td class="auto-style19">&nbsp;</td>
							 </tr>
							 <tr>
								 <td class="auto-style25"></td>
								 <td class="auto-style4">
									 <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="Source3" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="817px">
									 	<Columns>
											<asp:BoundField DataField="ReqNo" HeaderText="ReqNo" SortExpression="ReqNo" />
											<asp:BoundField DataField="Mcode" HeaderText="Mcode" SortExpression="Mcode" />
											<asp:BoundField DataField="Mdesc" HeaderText="Mdesc" SortExpression="Mdesc" />
											<asp:BoundField DataField="ReqDate" HeaderText="ReqDate" SortExpression="ReqDate" />
											<asp:BoundField DataField="AppDate" HeaderText="AppDate" SortExpression="AppDate" />
											<asp:BoundField DataField="QtySp" HeaderText="QtySp" SortExpression="QtySp" />
											<asp:BoundField DataField="ReqQty" HeaderText="ReqQty" SortExpression="ReqQty" />
											<asp:BoundField DataField="AppStatus" HeaderText="AppStatus" SortExpression="AppStatus" />
										    <asp:BoundField DataField="ApprovedQty" HeaderText="ApprovedQty" SortExpression="ApprovedQty" />
										 </Columns>
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
								 	 <asp:SqlDataSource ID="Source3" runat="server" ConnectionString="<%$ ConnectionStrings:SubStrConnectionString3 %>" SelectCommand="SELECT [ReqNo], [Mcode], [Mdesc], [ReqDate], [AppDate], [QtySp], [ReqQty], [AppStatus], [ApprovedQty] FROM [UserIN] WHERE ([PNo] = @PNo) ORDER BY [ReqDate]">
										 <SelectParameters>
											 <asp:ControlParameter ControlID="text_pno" Name="PNo" PropertyName="Text" Type="String" />
										 </SelectParameters>
									 </asp:SqlDataSource>
								 	<asp:SqlDataSource ID="Source2" runat="server" ConnectionString="<%$ ConnectionStrings:SubStrConnectionString2 %>" SelectCommand="SELECT * FROM [UserIN] WHERE ([PNo] = @PNo)">
										<SelectParameters>
											<asp:ControlParameter ControlID="text_pno" Name="PNo" PropertyName="Text" Type="String" />
										</SelectParameters>
									 </asp:SqlDataSource>
								 </td>
								 <td class="auto-style27"></td>
							 </tr>
							 <tr>
								 <td class="auto-style2"></td>
								 <td class="auto-style5" style="padding-bottom: 4px; padding-top: 4px">&nbsp;</td>
								 <td class="auto-style2"></td>
							 </tr>
							 <tr>
								 <td class="auto-style34"></td>
								 <td class="auto-style4" style="padding-top: 4px">
									 &nbsp;</td>
								 <td class="auto-style36"></td>
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
