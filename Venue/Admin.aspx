<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Venue.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <tag:Header ID="header" runat="server" />
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblPerf" runat="server" Text="Performer:"></asp:Label>
&nbsp;<asp:TextBox ID="txtPerf" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblGenre" runat="server" Text="Genre:"></asp:Label>
&nbsp;<asp:TextBox ID="txtGenre" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label>
&nbsp;<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblTime" runat="server" Text="Time:"></asp:Label>
&nbsp;<asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
        <br />
        <br />
        <asp:Label ID="lblError" runat="server" Visible="False"></asp:Label>
        <br />
        <br />

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShowDatabase %>" SelectCommand="SELECT [performer], [genre], [dates], [times] FROM [shows]">
        </asp:SqlDataSource>
         <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" EmptyDataText="There are no shows scheduled." AutoGenerateColumns="False">
             <AlternatingRowStyle BackColor="#CCCCCC" />
             <Columns>
                 <asp:BoundField DataField="performer" HeaderText="performer" SortExpression="performer" />
                 <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                 <asp:BoundField DataField="dates" HeaderText="dates" SortExpression="dates" />
                 <asp:BoundField DataField="times" HeaderText="times" SortExpression="times" />
             </Columns>
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    </form>
    <tag:Footer ID="Footer" runat="server" />
</body>
</html>
