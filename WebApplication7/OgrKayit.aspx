<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OgrKayit.aspx.cs" Inherits="WebApplication7.OgrKayit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/myCss.css" rel="stylesheet" />

    <div class="inputRow">
        <div>
            <asp:Label runat="server" Text="Label">adı:</asp:Label></div>
        <div>
            <asp:TextBox CssClass="inputtext" ID="TextBox1" runat="server"></asp:TextBox></div>
    </div>
    <div class="inputRow">
        <div>
            <asp:Label runat="server" Text="Label">Soyadı adı:</asp:Label></div>
        <div>
            <asp:TextBox CssClass="inputtext" ID="TextBox2" runat="server"></asp:TextBox></div>
    </div>
    <div class="buttonDiv inputRow">
        <asp:Button ID="Button1" CssClass="myButton" runat="server" Text="Button" OnClick="Button1_Click" />

    </div>
    <div style="margin-top: 30px;">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    </div>


    <div style="margin-top: 30px;">
        <table ID="ogrTable">
            <tr>
                <th>Id</th>
                <th>NAme</th>
                <th>Surnam</th>
            </tr>

            <%foreach (var item in ogrenciler)
                {%>
             <tr>
                <td> <%:item.Id %> </td>
                <td> <%:item.Name %> </td>
                <td> <%:item.Surname %> </td>
            </tr>
                <%
                    }
                %>
        </tabl>

    </div>


</div>
    </div>


</asp:Content>
