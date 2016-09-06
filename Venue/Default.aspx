<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Venue.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <tag:Header ID="header" runat="server" />
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShowDatabase %>" SelectCommand="SELECT [performer], [genre], [dates], [times] FROM [shows] ORDER BY [dates] DESC, [times] DESC"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="">performer:
                <asp:Label ID="performerLabel" runat="server" Text='<%# Eval("performer") %>' />
                <br />
                genre:
                <asp:Label ID="genreLabel" runat="server" Text='<%# Eval("genre") %>' />
                <br />
                dates:
                <asp:Label ID="datesLabel" runat="server" Text='<%# Eval("dates") %>' />
                <br />
                times:
                <asp:Label ID="timesLabel" runat="server" Text='<%# Eval("times") %>' />
                <br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">performer:
                <asp:TextBox ID="performerTextBox" runat="server" Text='<%# Bind("performer") %>' />
                <br />
                genre:
                <asp:TextBox ID="genreTextBox" runat="server" Text='<%# Bind("genre") %>' />
                <br />
                dates:
                <asp:TextBox ID="datesTextBox" runat="server" Text='<%# Bind("dates") %>' />
                <br />
                times:
                <asp:TextBox ID="timesTextBox" runat="server" Text='<%# Bind("times") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">performer:
                <asp:TextBox ID="performerTextBox" runat="server" Text='<%# Bind("performer") %>' />
                <br />
                genre:
                <asp:TextBox ID="genreTextBox" runat="server" Text='<%# Bind("genre") %>' />
                <br />
                dates:
                <asp:TextBox ID="datesTextBox" runat="server" Text='<%# Bind("dates") %>' />
                <br />
                times:
                <asp:TextBox ID="timesTextBox" runat="server" Text='<%# Bind("times") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">performer:
                <asp:Label ID="performerLabel" runat="server" Text='<%# Eval("performer") %>' />
                <br />
                genre:
                <asp:Label ID="genreLabel" runat="server" Text='<%# Eval("genre") %>' />
                <br />
                dates:
                <asp:Label ID="datesLabel" runat="server" Text='<%# Eval("dates") %>' />
                <br />
                times:
                <asp:Label ID="timesLabel" runat="server" Text='<%# Eval("times") %>' />
                <br />
                <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">performer:
                <asp:Label ID="performerLabel" runat="server" Text='<%# Eval("performer") %>' />
                <br />
                genre:
                <asp:Label ID="genreLabel" runat="server" Text='<%# Eval("genre") %>' />
                <br />
                dates:
                <asp:Label ID="datesLabel" runat="server" Text='<%# Eval("dates") %>' />
                <br />
                times:
                <asp:Label ID="timesLabel" runat="server" Text='<%# Eval("times") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
    </form>
    <tag:Footer ID="Footer" runat="server" />
</body>
</html>
