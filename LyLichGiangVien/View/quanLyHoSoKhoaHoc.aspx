<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/App.Master" AutoEventWireup="true" CodeBehind="quanLyHoSoKhoaHoc.aspx.cs" Inherits="LyLichGiangVien.View.quanLyHoSoKhoaHoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
            <div class="row">
                <div class="col-md-12">
                        <div class="welcome-text text-center">
                           <p style="font-size: 40px; margin-top: 40px; margin-bottom: 20px;"> QUẢN LÝ HỒ SƠ KHOA HỌC</p>
                        </div>
                </div>
           </div>
         <form class="form-inline" runat="server">
          <div class="form-group">
         <label for="tengv">Tên Giảng Viên:</label>
         <asp:TextBox ID="tenGV" runat="server" CssClass="form-control"></asp:TextBox>
              <asp:Button ID="btnTimKiem" runat="server" CssClass="btn btn-primary btn-md" Text="Tìm Kiếm" OnClick="btnTimKiem_Click" />
         </div>
             </form>
          <div class="row">
                <div class="col-md-10 text-center">
                      <asp:GridView ID="gridView_lyLich" runat="server" CssClass="table table-striped"  AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical"
            DataKeyNames="" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"  PageSize="3">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="MaBS" HeaderText="Mã Lý Lịch" SortExpression="MaBS" />
                <asp:BoundField DataField="MaGV" HeaderText="Mã GV" SortExpression="MaGV" />
                <asp:TemplateField HeaderText="Tên GV">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("TenGV") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="TenDeTaiNC" HeaderText="Tên Đề Tài NC" SortExpression="TenDeTaiNC" />
                <asp:BoundField DataField="NamBatDau" HeaderText="Năm BẮt Đầu" SortExpression="NamBatDau" />
                <asp:BoundField DataField="NamKetThuc" HeaderText="Năm Kết Thúc" SortExpression="NamKetThuc" />
                <asp:BoundField DataField="GiaiThuong" HeaderText="Giải Thưởng" SortExpression="GiaiThuong" />
              
                <asp:TemplateField HeaderText="Duyệt">
                    <ItemTemplate>
                       
                       <a href="quanLyHoSoKhoaHoc.aspx?mabs=<%# Eval("MaBs") %>&tt=<%# Eval("TrangThai") %>&func=duyet"><%# Eval("TrangThai").ToString().Equals("0") ? " Chưa Duyệt" : "Đã Duyệt" %></a>
                        </ItemTemplate>
                </asp:TemplateField>
               
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="SuaLyLich.aspx?func=sua&mabs=<%# Eval("MaBs") %>">Sửa</a>
                    </ItemTemplate>
                      </asp:TemplateField>
                
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
                </div>




                </div>
</div>
</asp:Content>