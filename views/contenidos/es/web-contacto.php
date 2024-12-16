<!-- Seccion Contacto -->
<section class="contacto py-5" id="contacto">
  <article class="container">
    <!-- <br><br> -->
    <h2 class="text-center mb-4">Contacto</h2>
    <p class="text-center mb-5">¿Tienes alguna pregunta? ¡Nos encantaría ayudarte! Completa el formulario a continuación y nos pondremos en contacto contigo lo antes posible.</p>
    <form action="registro.php" method="get" class="needs-validation" novalidate target="_blank">
      <div class="row g-3">
        <div class="col-md-6">
          <label for="nombre" class="form-label">Nombre</label>
          <input type="text" class="form-control" id="nombre" name="nombre" required>
          <div class="invalid-feedback">
            Por favor, introduce tu nombre.
          </div>
        </div>
        <div class="col-md-6">
          <label for="email" class="form-label">Correo Electrónico</label>
          <input type="email" class="form-control" id="email" name="email" required>
          <div class="invalid-feedback">
            Por favor, introduce un correo electrónico válido.
          </div>
        </div>
      </div>
      <div class="mb-3">
        <label for="asunto" class="form-label">Asunto</label>
        <input type="text" class="form-control" id="asunto" name="asunto" required>
        <div class="invalid-feedback">
          Por favor, introduce el asunto de tu mensaje.
        </div>
      </div>
      <div class="mb-3">
        <label for="mensaje" class="form-label">Mensaje</label>
        <textarea class="form-control" id="mensaje" name="mensaje" rows="5" required></textarea>
        <div class="invalid-feedback">
          Por favor, escribe tu mensaje.
        </div>
      </div>
      <div class="text-center">
        <button type="submit" class="btn btn-primary">Enviar Mensaje</button>
      </div>
    </form>
  </article>

  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63400.00233130128!2d-79.94912461453494!3d-6.708648235815726!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x904ced92aa289a0b%3A0xf0aaf8e50d58774b!2sLambayeque!5e0!3m2!1ses!2spe!4v1720870913912!5m2!1ses!2spe" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</section>
