<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KHACH HANG</title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            background: antiquewhite;
            margin: 0 auto;
            height: 382px;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
            height: 29px;
        }
        .auto-style3 {
            font-size: large;
        }
      
        </style>
</head>
<body style="height: 390px" >
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="1" cellspacing="1" class="auto-style1" >
            <tr>
                <td class="auto-style2"><strong>QUẢN LÍ KHÁCH HÀNG</strong></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MA_KHACH_HANG" DataSourceID="ass" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="white" />
                        <Columns>
                            <asp:BoundField DataField="MA_KHACH_HANG" HeaderText="Mã Khách Hàng" ReadOnly="True" SortExpression="MA_KHACH_HANG" />
                            <asp:BoundField DataField="HO_VA_TEN" HeaderText="Họ Và Tên" SortExpression="HO_VA_TEN" />
                            <asp:BoundField DataField="SĐT" HeaderText="Số Điện Thoại" SortExpression="SĐT" />
                            <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
                            <asp:BoundField DataField="DIA_CHI" HeaderText="Địa Chỉ" SortExpression="DIA_CHI" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="ass" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ASSIGNMENT_GĐ1_INF205 %>" DeleteCommand="DELETE FROM [KHACH_HANG] WHERE [MA_KHACH_HANG] = @original_MA_KHACH_HANG AND [HO_VA_TEN] = @original_HO_VA_TEN AND [SĐT] = @original_SĐT AND [EMAIL] = @original_EMAIL AND [DIA_CHI] = @original_DIA_CHI" InsertCommand="INSERT INTO [KHACH_HANG] ([MA_KHACH_HANG], [HO_VA_TEN], [SĐT], [EMAIL], [DIA_CHI]) VALUES (@MA_KHACH_HANG, @HO_VA_TEN, @SĐT, @EMAIL, @DIA_CHI)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KHACH_HANG]" UpdateCommand="UPDATE [KHACH_HANG] SET [HO_VA_TEN] = @HO_VA_TEN, [SĐT] = @SĐT, [EMAIL] = @EMAIL, [DIA_CHI] = @DIA_CHI WHERE [MA_KHACH_HANG] = @original_MA_KHACH_HANG AND [HO_VA_TEN] = @original_HO_VA_TEN AND [SĐT] = @original_SĐT AND [EMAIL] = @original_EMAIL AND [DIA_CHI] = @original_DIA_CHI">
                        <DeleteParameters>
                            <asp:Parameter Name="original_MA_KHACH_HANG" Type="String" />
                            <asp:Parameter Name="original_HO_VA_TEN" Type="String" />
                            <asp:Parameter Name="original_SĐT" Type="String" />
                            <asp:Parameter Name="original_EMAIL" Type="String" />
                            <asp:Parameter Name="original_DIA_CHI" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="MA_KHACH_HANG" Type="String" />
                            <asp:Parameter Name="HO_VA_TEN" Type="String" />
                            <asp:Parameter Name="SĐT" Type="String" />
                            <asp:Parameter Name="EMAIL" Type="String" />
                            <asp:Parameter Name="DIA_CHI" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="HO_VA_TEN" Type="String" />
                            <asp:Parameter Name="SĐT" Type="String" />
                            <asp:Parameter Name="EMAIL" Type="String" />
                            <asp:Parameter Name="DIA_CHI" Type="String" />
                            <asp:Parameter Name="original_MA_KHACH_HANG" Type="String" />
                            <asp:Parameter Name="original_HO_VA_TEN" Type="String" />
                            <asp:Parameter Name="original_SĐT" Type="String" />
                            <asp:Parameter Name="original_EMAIL" Type="String" />
                            <asp:Parameter Name="original_DIA_CHI" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MA_KHACH_HANG" DataSourceID="ass">
                        <EditItemTemplate>
                            MA_KHACH_HANG:
                            <asp:Label ID="MA_KHACH_HANGLabel1" runat="server" Text='<%# Eval("MA_KHACH_HANG") %>' />
                            <br />
                            HO_VA_TEN:
                            <asp:TextBox ID="HO_VA_TENTextBox" runat="server" Text='<%# Bind("HO_VA_TEN") %>' />
                            <br />
                            SĐT:
                            <asp:TextBox ID="SĐTTextBox" runat="server" Text='<%# Bind("SĐT") %>' />
                            <br />
                            EMAIL:
                            <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                            <br />
                            DIA_CHI:
                            <asp:TextBox ID="DIA_CHITextBox" runat="server" Text='<%# Bind("DIA_CHI") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <strong>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="auto-style3" Text="New" />
                            </strong>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            MA_KHACH_HANG:
                            <asp:TextBox ID="MA_KHACH_HANGTextBox" runat="server" Text='<%# Bind("MA_KHACH_HANG") %>' />
                            <br />
                            HO_VA_TEN:
                            <asp:TextBox ID="HO_VA_TENTextBox" runat="server" Text='<%# Bind("HO_VA_TEN") %>' />
                            <br />
                            SĐT:
                            <asp:TextBox ID="SĐTTextBox" runat="server" Text='<%# Bind("SĐT") %>' />
                            <br />
                            EMAIL:
                            <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                            <br />
                            DIA_CHI:
                            <asp:TextBox ID="DIA_CHITextBox" runat="server" Text='<%# Bind("DIA_CHI") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <br />
                            &nbsp;<strong><asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="auto-style3" Text="New" />
                            </strong>
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
