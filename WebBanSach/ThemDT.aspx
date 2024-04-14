<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ThemDT.aspx.cs" Inherits="WebBanSach.ThemDT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <h2>TRANG THÊM Sản Phẩm MỚI</h2>
    <hr />
    <asp:ValidationSummary ID="vsLoi" runat="server" ForeColor="Red" />
    <div class="form-group">
        <label>Tên Điện Thoại </label>
        <asp:TextBox ID="txtTen" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvTen" runat="server" ControlToValidate="txtTen" Text="(*)" ForeColor="#ff0000"
        ErrorMessage="Tên điện thoại không được bỏ trống"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>Giá bán</label>
        <asp:TextBox ID="txtDongia" runat="server" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvDongia" runat="server" ControlToValidate="txtDongia" Text="(*)" ForeColor="#ff0000"
        ErrorMessage="Đơn giá không được bỏ trống"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvDongia" ControlToValidate="txtDongia" ValueToCompare="0" Type="Double" ForeColor="#ff0000" Operator="GreaterThanEqual" runat="server" 
            ErrorMessage="Đơn giá không hợp lệ (phải >= 0)"></asp:CompareValidator>
    </div>
    <div class="form-group">
        <label>Ảnh bìa</label>
        <asp:FileUpload ID="FHinh" runat="server" />
    </div>
    <div class="form-group">
        <label>Chủ đề</label>
        <asp:DropDownList ID="ddlChuDe" runat="server" CssClass="form-control" 
            DataSourceID="dsChuDe" DataTextField="TenHang" DataValueField="MaHang"></asp:DropDownList>    </div>
    <div class="form-group">
        <label>Hệ Điều Hành </label>
            <asp:DropDownList ID="ddlNXB" runat="server" CssClass="form-control" 
                DataSourceID="dsNXB" DataTextField="TenHdh" DataValueField="MaHdh"></asp:DropDownList>    </div>
    <div class="form-group">
        <label>Ngày cập nhật</label>
        <asp:TextBox ID="txtNgayCapNhat" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:Button ID="btnThem" runat="server" Text="Thêm" CssClass="btn btn-primary" OnClick="btnThem_Click" />
      <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
    <a href="QTSach.aspx">Go To List</a>

    <asp:SqlDataSource ID="dsNXB" runat="server" ConnectionString="<%$ ConnectionStrings:DienThoai %>" 
        SelectCommand="SELECT * FROM [HeDieuHanh]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsChuDe" runat="server" ConnectionString="<%$ ConnectionStrings:DienThoai %>" 
        SelectCommand="SELECT * FROM [HangSanXuat]"></asp:SqlDataSource>
</asp:Content>
