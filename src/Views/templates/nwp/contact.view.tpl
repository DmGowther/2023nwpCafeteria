<!-- FORMULARIO DE CONTACTO -->
<div class="container_ctn">
    <span class="big-circle"></span>
    <img src="/{{BASE_DIR}}/public/nwp/img/imgContacto/Coffee-Beans-PNG-Clipart-Background.png" class="square" alt="" />
    <div class="form">
        <div class="contact-info">
            <h3 class="title">Formulario de contacto de: Cafe Imperial</h3>
            <p class="text">
                En Cafe Imperial siempre se ha tratado y siempre se tratará de calidad. Nuestra pasión por el café solo se
                compara con nuestro amor por compartirlo.
                Ya sea que esté bebiendo solo o recibiendo invitados, disfrutar del café en casa debe ser una experiencia
                relajante, calmante y conmovedora.</p>

            <div class="info">
                <div class="information">
                    <img src="/{{BASE_DIR}}/public/nwp/img/imgContacto/telefono.png" class="icon" alt="">
                    <p>3355-8833</p>
                </div>
                <div class="information">
                    <img src="/{{BASE_DIR}}/public/nwp/img/imgContacto/email.png" class="icon" alt="">
                    <p>imperialcoffe@gmail.com</p>
                </div>
                <div class="information">
                    <img src="/{{BASE_DIR}}/public/nwp/img/imgContacto/location.png" class="icon" alt="">
                    <p>Danli, El Paraiso</p>
                </div>
            </div>

            <div class="social-media">
                <p>Conecte con nosotros</p>
                <div class="social-icons">
                    <a href="https://www.facebook.com/profile.php?id=100057214729624" target="_blank">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="https://twitter.com/cafegijon" target="_blank">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="https://www.instagram.com/cafe_gijon/?hl=es" target="_blank">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="https://www.linkedin.com/company/cafeteria/?original_referer=https%3A%2F%2Fwww%2Egoogle%2Ecom%2F&originalSubdomain=es"
                       target="_blank">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>
            </div>
        </div>

        <div class="contact-form">
            <span class="circle one"></span>
            <span class="circle two"></span>

            <form action="https://formsubmit.co/pruebaportalesweb2@gmail.com" autocomplete="off" method="POST"
                  onsubmit="return validateForm()">
                <h3 class="title">Contactenos</h3>
                <div class="input-container">
                    <input type="text" name="name" class="input" />
                    <label for="">Nombre Completo</label>
                    <span>Nombre Completo</span>
                </div>
                <div class="input-container">
                    <input type="email" name="email" class="input" />
                    <label for="">Correo Electronico</label>
                    <span>Correo Electronico</span>
                </div>
                <div class="input-container">
                    <input type="tel" name="phone" class="input" />
                    <label for="">Numero de Telefono</label>
                    <span>Numero de Telefono</span>
                </div>
                <div class="input-container textarea">
                    <textarea name="message" class="input"></textarea>
                    <label for="">Mensaje</label>
                    <span>Mensaje</span>
                </div>
                <input type="submit" value="Enviar" class="btn_ctn" />
                <input type="hidden" name="_captcha" value="false">
                <input type="hidden" name="_next" value="http://localhost/Proyecto/html/contacto.html">
            </form>
        </div>
    </div>
</div>

