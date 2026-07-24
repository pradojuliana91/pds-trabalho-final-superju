<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SuperJU.WEB.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            background: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            width: 380px;
            background: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0,0,0,.15);
        }

        .login-container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        .campo {
            margin-bottom: 20px;
        }

        .campo label {
            display: block;
            margin-bottom: 6px;
            color: #555;
            font-weight: bold;
        }

        .textbox {
            width: 100%;
            padding: 12px;
            border: 1px solid #CCC;
            border-radius: 5px;
            font-size: 15px;
        }

        .textbox:focus {
            outline: none;
            border-color: #0078D7;
        }

        .btnLogin {
            width: 100%;
            padding: 12px;
            background: #0078D7;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: .3s;
        }

        .btnLogin:hover {
            background: #005fa3;
        }

        .mensagem {
            color: red;
            text-align: center;
            margin-top: 15px;
        }

        .logo {
            text-align: center;
            font-size: 55px;
            margin-bottom: 15px;
        }

    </style>
</head>
<body>

    <form id="form1" runat="server">

        <div class="login-container">

            <div class="logo">
                🔐
            </div>

            <h2>Entrar no Sistema</h2>

            <div class="campo">
                <label>Usuário</label>

                <asp:TextBox
                    ID="txtUsuario"
                    runat="server"
                    CssClass="textbox"
                    placeholder="Digite seu usuário">
                </asp:TextBox>
            </div>

            <div class="campo">
                <label>Senha</label>

                <asp:TextBox
                    ID="txtSenha"
                    runat="server"
                    CssClass="textbox"
                    TextMode="Password"
                    placeholder="Digite sua senha">
                </asp:TextBox>
            </div>

            <asp:Button
                ID="btnEntrar"
                runat="server"
                Text="Entrar"
                CssClass="btnLogin"
                OnClick="btnEntrar_Click" />

            <br /><br />

            <asp:Label
                ID="lblMensagem"
                runat="server"
                CssClass="mensagem">
            </asp:Label>

        </div>

    </form>

</body>
</html>
