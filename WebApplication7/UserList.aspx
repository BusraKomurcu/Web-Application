<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="WebApplication7.UserList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/myCss.css" rel="stylesheet" />


    <div>
        <table>
            <tr>
               
                <th>Id</th>
                <th>FullName</th>
                <th>UserName</th>
                <th>Password</th>
                <th>Credit</th>
            </tr>
            <%foreach (var item in userList)
                {%>
            <tr>
              
            <td> <a href="/USerUpdate?id=<%:item.Id %>"><%:item.Id %></a></td>
             <td><%:item.FullName %></td>
             <td><%:item.UserName %></td>
             <td><%:item.Password %></td>
             <td><%:item.Credit %></td>
            </tr>

            <%} %>

        </table>

    </div>



</asp:Content>
