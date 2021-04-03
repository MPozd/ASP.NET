<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="RSVP3.SummaryBD" MasterPageFile="~/Site.master" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">
    <h2>Список участников<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="Rdata" HeaderText="Дата регистрации" ReadOnly="True" SortExpression="Rdata" />
            <asp:BoundField DataField="Email" HeaderText="Электронный адрес" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Name" HeaderText="Имя" ReadOnly="True" SortExpression="Name" />
            <asp:BoundField DataField="Phone" HeaderText="Телефон" ReadOnly="True" SortExpression="Phone" />
        </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="RSVP3.SampleContext" EntityTypeName="" Select="new (Reports, Rdata, WillAttend, Email, Name, Phone)" TableName="GuestResponses">
        </asp:LinqDataSource>
    </h2>
</asp:Content>

        