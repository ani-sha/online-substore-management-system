<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mat_Master1.aspx.cs" Inherits="SYSTEMS_SUBSTORE.Mat_Master1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<style type="text/css">
		.auto-style1 {
			width: 88%;
		}
		.auto-style2 {
			height: 658px;
		}
		.auto-style4 {
			width: 50%;
			height: 124px;
		}
		.auto-style6 {
			width: 50%;
			height: 70px;
		}
		.auto-style7 {
			height: 51px;
		}
		.auto-style8 {
			width: 50%;
			height: 51px;
		}
		.auto-style11 {
			height: 52px;
		}
		.auto-style12 {
			width: 50%;
			height: 52px;
		}
		.auto-style13 {
			height: 47px;
			text-align: right;
		}
		.auto-style14 {
			width: 50%;
			height: 47px;
			text-align: left;
		}
		.auto-style15 {
			font-size: large;
		}
		.auto-style17 {
			text-align: left;
			width: 50%;
		}
		.auto-style18 {
			font-size: large;
			font-weight: bold;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div align="center" class="auto-style2">
        <div class="auto-style1">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <legend class="auto-style18" style="text-align: center"><strong>NEW&nbsp; STOCK</strong></legend>
						<table>
                            <tr>
                                <td align="right" class="auto-style11">
                                    <font size="4em">       MATERIAL DESCRIPTION&nbsp; :-</font>
                                </td>
                                <td align="left" class="auto-style12">
                                    <asp:DropDownList ID="text_matdesc" runat="server" OnSelectedIndexChanged="text_matdesc_SelectedIndexChanged" Width="379px" AutoPostBack="True" Height="25px">
									</asp:DropDownList>
									
                                    
								</td>
                            </tr>
                            <tr>
                                <td class="auto-style13"><font size="4em">STOCK QUANTITY&nbsp; :-</font></td>
                                <td class="auto-style14">
									<asp:TextBox ID="mstock" runat="server" ReadOnly="True" Width="150px" OnTextChanged="mstock_TextChanged" AutoPostBack="True" Height="25px"></asp:TextBox>
								</td>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style7">
                                    <span class="auto-style15">QUANTITY :-&nbsp; </span>
                                	&nbsp;</td>
                                <td align="left" class="auto-style8">
                                    <asp:TextBox ID="newstock" runat="server" ToolTip="New Stock" Width="150px" OnTextChanged="newstock_TextChanged" Height="25px"></asp:TextBox>
                                    
                                </td>


                            </tr>

                            </tr>
                        	<tr>
								<td class="auto-style6">&nbsp;</td>
								<td class="auto-style17">
									<asp:Button ID="btnsubmit" runat="server" Font-Bold="true" ForeColor="#383E78" OnClick="btnsubmit_Click" Text="Submit" Height="25px" Width="109px" />
									<strong>
									<asp:Label ID="lbl_msg" runat="server" CssClass="auto-style15" ForeColor="Red" Width="200px"></asp:Label>
									</strong>
								</td>
							</tr>
                        </table>
                        <asp:Label ID="lbl_submit" runat="server" ForeColor="Green" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>

                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>


                    <div id="blur">&nbsp;</div>
                    <div id="progress" style="margin-top: auto;" class="auto-style4">
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
