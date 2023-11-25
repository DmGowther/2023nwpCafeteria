
<div class="container">
    <div class="forms-container">
        <div class="signin-signup">
            <form method="POST"
                  action="index.php?page=nwp_access_access&modeAccess=singin{{if redirto}}&redirto={{redirto}}{{endif redirto}}"
                  class="sign-in-form">
                <h2 class="title">Iniciar sesión</h2>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="email" id="txtEmail" name="txtEmail" placeholder="Correo electronico"/>

                </div>
                {{if errorEmailSingin}}
                <div class="alert">
                    {{errorEmailSingin}}
                </div>
                {{endif errorEmailSingin}}

                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="txtPswd" name="txtPswd" placeholder="Contraseña"/>
                </div>
                {{if errorPswdSingin}}
                <div class="alert">
                    {{errorPswdSingin}}
                </div>
                {{endif errorPswdSingin}}

                <input type="submit" value="Ingresar" class="btn solid"/>
            </form>


            <form method="POST" action="index.php?page=nwp_access_access&modeAccess=singup" class="sign-up-form">
                <h2 class="title">Formulario de registro</h2>

                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" id="txtUserName" name="txtUserName" placeholder="Nombre de usuario"/>
                </div>

                {{if errorName}}
                <div class="alert">
                    {{errorName}}
                </div>
                {{endif errorName}}

                <div class="input-field">
                    <i class="fas fa-envelope"></i>
                    <input type="email" id="txtEmail" name="txtEmail" placeholder="Correo electronico"/>
                </div>

                {{if errorEmail}}
                <div class="alert">
                    {{errorEmail}}
                </div>
                {{endif errorEmail}}

                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="txtPswd" name="txtPswd" placeholder="Contraseña"/>
                </div>
                {{if errorPswd}}
                <div class="alert">
                    {{errorPswd}}
                </div>
                {{endif errorPswd}}

                <input type="submit" class="btn" value="Registrarse"/>
            </form>
        </div>
    </div>

    <div class="panels-container">
        <div class="panel left-panel">
            <div class="content">
                <h3>¿Eres nuevo aqui?</h3>
                <p>
                    Si aún no tienes una cuenta, ve al formulario de registro dando clic al botón de abajo.
                </p>
                <button class="btn transparent"
                        id="sign-up-btn">
                    ¡Regístrate aquí!
                </button>
            </div>

            <img src="https://drive.google.com/uc?export=view&id=1rqRrdokH9qojAf3kn2C6OFiBhTuqDGVO"
                 alt="Image description" class="image">
        </div>

        <div class="panel right-panel">
            <div class="content">
                <h3>
                    ¿Ya eres uno de nosotros?</h3>
                <p>
                    ¡Inicia sesión aquí! Haz clic en el botón de abajo para ir a la pantalla de inicio de sesión.
                </p>
                <button class="btn transparent"
                        id="sign-in-btn">
                    Iniciar Sesión
                </button>
            </div>
            <img src="https://drive.google.com/uc?export=view&id=1MNgDEfofWfJjyMbOn1hrniD1DPmV4Us7"
                 alt="Image description" class="image">

        </div>
    </div>
</div>

<script src="https://kit.fontawesome.com/3e069d0dca.js" crossorigin="anonymous"></script>
