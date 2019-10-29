<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/App.Master" AutoEventWireup="true" CodeBehind="SuaLyLich.aspx.cs" Inherits="LyLichGiangVien.View.SuaLyLich" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <div class="text-white-op push-15-t welcome-text text-center">
                        Sửa Lý Lịch
                       
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-2">
                            <form class="form-horizontal" id="form1" runat="server">
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="TenDeTai">Tên Đề Tài:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="sTenDeTai" Text="Tên Đề Tài" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="NamBatDau">Năm Bắt Đầu:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox TextMode="Date" ID="NamBatDau" Text="Năm Bắt Đầu" runat="server" CssClass="form-control" />
                                        <asp:HiddenField ID="MaBS" runat="server" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="NamKetThuc">Năm Kết Thúc:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox TextMode="Date" ID="NamKetThuc" Text="Năm Kết Thúc" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="GiaiThuong">Giải Thưởng:</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="GiaiThuong" Text="GiaiThuong" runat="server" CssClass="form-control" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-md-8">
                                        <asp:Label ID="l1" runat="server"></asp:Label>
                                        <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" OnClick="btnUpdate_Click" Text="UPDATE" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <style type="text/css">
        .welcome-text {
            font-size: 40px;
            margin-top: 10px;
        }

        @media screen and (max-width: 768px) {
            .welcome-text {
                font-size: 30px;
                margin-top: 10px;
                padding-left: 15px;
                padding-right: 15px;
            }
        }

        @media screen and (max-width: 425px) {
            .welcome-text {
                font-size: 25px;
                margin-top: 10px;
                padding-left: 10px;
                padding-right: 10px;
            }
        }
    </style>
</asp:Content>
