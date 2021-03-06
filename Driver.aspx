﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Driver.aspx.cs" Inherits="customs_code_Driver" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

             <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
    <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="false" />

       <telerik:RadGrid ID="RadGrid1" runat="server"  AllowPaging="True" AllowFilteringByColumn="False" AllowSorting="True"
           OnItemDataBound="RadGrid1_ItemDataBound">

             <MasterTableView AutoGenerateColumns="False" TableLayout="Fixed">
                     <PagerStyle PageSizes="5,10" PagerTextFormat="{4}<strong>{5}</strong> cars matching your search criteria"
                            PageSizeLabelText="Cars per page:" />

                 <Columns>


      <telerik:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="No.">
        <ItemTemplate>
          <asp:Label ID="numberLabel" runat="server" Width="30px" />
        </ItemTemplate>
        <HeaderStyle Width="30px" />
      </telerik:GridTemplateColumn>
  
                             <telerik:GridBoundColumn DataField="Name" HeaderText="Name" UniqueName="Name"
                                 >
                                <HeaderStyle Width="115px" />
                            </telerik:GridBoundColumn>

                

                            <telerik:GridBoundColumn DataField="CompanyName" HeaderText="Company Name" UniqueName="CompanyName"
                                 FilterControlWidth="60px">
                                <HeaderStyle Width="115px" />
                            </telerik:GridBoundColumn>


                        <telerik:GridBoundColumn DataField="Telphone" HeaderText="Telephone" UniqueName="Telphone"
                                 FilterControlWidth="60px">
                                <HeaderStyle Width="115px" />
                            </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Remark" HeaderText="Remark" UniqueName="Remark">
                                <HeaderStyle Width="115px" />
                            </telerik:GridBoundColumn>

                              <telerik:GridBoundColumn DataField="Active" HeaderText="Active" UniqueName="Active"
                                 FilterControlWidth="60px">
                                <HeaderStyle Width="115px" />
                            </telerik:GridBoundColumn>

           

                     

                 </Columns>



                 </MasterTableView>


    </telerik:RadGrid>


</asp:Content>

