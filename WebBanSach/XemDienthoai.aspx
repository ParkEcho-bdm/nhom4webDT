<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemDienthoai.aspx.cs" Inherits="WebBanSach.XemSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">

    <div class="row">
        <div class="col-md-3">

            <ul class="list-group">
                 <a class="list-group-item active">Menu </a>
                <asp:Repeater ID="rptChuDe" runat="server" DataSourceID="dsChuDe">
                    <ItemTemplate>
                          <a href="XemDienthoai.aspx?MaHang=<%# Eval("MaHang") %>" class="list-group-item "><%# Eval("TenHang") %></a>
                    </ItemTemplate>
                </asp:Repeater>         
            </ul>

         
        </div>

        <div class="col-md-9">
            <asp:ListView ID="lvSach" runat="server" DataSourceID="dsSach">
                 <ItemTemplate>
                        <div class="col-md-3 text-center mb-2">
                             <a href="#"> 
                                   <img src="<%# Eval("Hinh","HinhanhSP/{0}") %>" style="width:150px;height:200px"></img>
                              </a> 
                            <br />
                            <asp:Button ID="btDatMua" runat="server" Text="Đặt mua" CssClass="btn btn-success mt-2" /> <br />
                            <%# Eval("Tensp") %>  <br />
                            Giá bán: <span class="text-danger"> <%# Eval("dongia","{0: #,##0} đồng") %></span>

                        </div>
                  </ItemTemplate>
                  <LayoutTemplate>
                       <div class="row">
                            <div id="itemPlaceHolder" runat="server">
                            </div>
                       </div>
                      <div class="row">
                           <div class="col-md-12 text-center">
                               <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                   <Fields>
                                       <asp:NumericPagerField />
                                   </Fields>
                               </asp:DataPager>
                           </div>
                      </div>
                  </LayoutTemplate>
            </asp:ListView>          
        </div>
    </div>

    <asp:SqlDataSource ID="dsChuDe" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DienThoai %>"
        SelectCommand="SELECT * FROM [HangSanXuat]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="dsSach" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DienThoai %>" 
        SelectCommand="SELECT * FROM [SanPham]">
    </asp:SqlDataSource>
    </asp:Content>
