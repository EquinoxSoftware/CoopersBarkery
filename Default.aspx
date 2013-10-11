<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server">Home</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PagePH" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="LeftColumnPH" Runat="Server">
<dl>
        <dt><asp:Label runat="server" ID="NameTBLabel" Text="User Name" AssociatedControlID="NameTB"></asp:Label></dt>
        <dd><asp:TextBox runat="server" ID="NameTB" ></asp:TextBox></dd>
        <dt><asp:Label runat="server" ID="PWTBLabel" Text="Password" AssociatedControlID="PWTB" ></asp:Label></dt>
        <dd><asp:TextBox runat="server" ID="PWTB" TextMode="Password"></asp:TextBox></dd>        
</dl>
<asp:Button Text="Submit" ID="SubmitBtn" runat="server" OnClick="validate" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="SiteTitlePH" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="RightColumnPH" Runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="BottomRowPH" Runat="Server">
</asp:Content>

