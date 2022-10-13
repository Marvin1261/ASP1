 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estudiantes.aspx.cs" Inherits="pr_web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Formulario Estudiantes</h1>
    <asp:Label ID="lbl_codigo" runat="server" Text="Codigo" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_codigo" runat="server" CssClass="form-control" placeholder="Ej: E001"></asp:TextBox>
    <asp:Label ID="lbl_carne" runat="server" Text="Carne" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_carne" runat="server" CssClass="form-control" placeholder="Ej: 1234" TextMode="Number"></asp:TextBox>
    <asp:Label ID="lbl_nombres" runat="server" Text="Nombres" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_nombre" runat="server" CssClass="form-control" placeholder="Ej: Nombre1 Nombre2"></asp:TextBox>
    <asp:Label ID="lbl_apellidos" runat="server" Text="Apellidos" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control" placeholder="Ej: Apellido1 Apellido2"></asp:TextBox>
    <asp:Label ID="lbl_direccion" runat="server" Text="Direccion" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_direccion" runat="server" CssClass="form-control" placeholder="Ej: #casa, av, zona, ciudad"></asp:TextBox>
    <asp:Label ID="lbl_telefono" runat="server" Text="Telefono" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" placeholder="Ej: 22220000" TextMode="Number"></asp:TextBox>
    <asp:Label ID="lbl_correo" runat="server" Text="Correo Electronico" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_correo" runat="server" CssClass="form-control" placeholder="Ej: ejemplo@gmail.com"></asp:TextBox>
    <asp:Label ID="lbl_fn" runat="server" Text="Fecha de Nacimiento" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_fn" runat="server" CssClass="form-control" placeholder=" yyyy-mm-dd" TextMode="Date"></asp:TextBox>
    <asp:Label ID="lbl_sangre" runat="server" Text="Tipo de Sangre" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:DropDownList ID="drop_sangre" runat="server" CssClass="form-control"></asp:DropDownList>
    <asp:Button ID="btn_crear" runat="server" Text="Crear" CssClass="btn btn-primary" OnClick="btn_crear_Click" />
    <asp:Button ID="btn_modificar" runat="server" Text="Modificar" CssClass="btn btn-success" />
    
    <asp:GridView ID="empleados" runat="server" AutoGenerateColumns="False" CssClass="table-condensed" DataKeyNames="id,id_empleados" OnSelectedIndexChanged="empleados_SelectedIndexChanged">
        <Columns>
             <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btn_select" runat="server" CausesValidation="False" CommandName="Select" Text="ver" CssClass="btn btn-info" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btn_borrar" runat="server" CausesValidation="False" CommandName="Delete" Text="Borrar" CssClass="btn btn-danger" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="carne" HeaderText="Carne" />
            <asp:BoundField DataField="nombres" HeaderText="Nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
            <asp:BoundField DataField="direccion" HeaderText="Direccion" />
            <asp:BoundField DataField="telefono" HeaderText="Telefono" />
            <asp:BoundField DataField="correo" HeaderText="Correo" />
            <asp:BoundField DataField="sangre" HeaderText="Sangre" />
            <asp:BoundField DataField="fecha_nacimiento" HeaderText="Nacimiento" />
            
        </Columns>
    </asp:GridView>

</asp:Content>
