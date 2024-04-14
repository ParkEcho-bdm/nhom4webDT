<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="QTDienthoai.aspx.cs" Inherits="WebBanSach.QTSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <h2>TRANG QUẢN TRỊ SÁCH</h2>
  <hr />

    <div class="row">
         <div class="col-md-6">
               <div class="form-inline">
                    Tên điện thoại  <asp:TextBox ID="txtTen" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:Button ID="btTraCuu" runat="server" Text="Tra cứu" CssClass="btn btn-secondary" />
               </div>
         </div>
        <div class="col-md-6 text-right">
              <a href="ThemDT.aspx" class="btn btn-success">Thêm Điện Thoại </a>
         </div>
    </div>

    <asp:GridView ID="gvSach" runat="server" CssClass="table table-bordered mt-2" AutoGenerateColumns="False"
        DataKeyNames="Masp" DataSourceID="dsSach" AllowPaging="True" PageSize="5">
        <Columns>            
            <asp:BoundField DataField="Tensp" HeaderText="Tên Điện Thoại " SortExpression="TenSach" />   
            <asp:ImageField DataImageUrlField="Hinh" DataImageUrlFormatString="HinhanhSP/{0}" HeaderText="SanPham" ControlStyle-Height="150px" ControlStyle-Width="100px" SortExpression="Hinh" />
            <asp:BoundField DataField="Dongia" DataFormatString="{0: #,##0} đồng " HeaderText="Đơn giá" SortExpression="Dongia" />           
            <asp:BoundField DataField="Ngaycapnhat" DataFormatString="{0:dd/MM/yyyy}" ReadOnly="false" HeaderText="Ngày cập nhật" SortExpression="Ngaycapnhat" />
            <asp:TemplateField ItemStyle-Wrap="false">
                 <ItemTemplate>
                     <asp:Button ID="btSua" runat="server" CssClass="btn btn-success" CommandName="Edit" Text="Sửa" />
                     <asp:Button ID="btXoa" OnClientClick="return confirm('Bạn có muốn xoá điện thoại này?')"  runat="server" CssClass="btn btn-danger" CommandName="Delete" Text="Xoá" />
                 </ItemTemplate>
                <EditItemTemplate>
                       <asp:Button ID="btCapnhat" runat="server" CssClass="btn btn-success" CommandName="Update" Text="Ghi" />
                       <asp:Button ID="btKhong" runat="server" CssClass="btn btn-secondary" CommandName="Cancel" Text="Không" />
                </EditItemTemplate>
               
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
             <div class="alert alert-info">
                  Không có dữ liệu
             </div>
        </EmptyDataTemplate>       
    </asp:GridView>
   

    <asp:SqlDataSource ID="dsSach" runat="server" ConnectionString="<%$ ConnectionStrings:DienThoai %>"
        SelectCommand="SELECT * FROM [SanPham]">
    </asp:SqlDataSource> 
</asp:Content>