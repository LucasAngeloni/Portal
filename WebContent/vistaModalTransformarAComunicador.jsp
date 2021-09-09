<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="modal fade" id="comunicador" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="exampleModalLabel">Volverse Comunicador</h5>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             
             <form method="post" action="ControladorUsuario">
             <input type="hidden" name="instruccion" value="transformar_a_comunicador"> 
				<div class="modal-body">
					<div class="form-group">
						<label for="txtNombre" class="col-form-label">Nombre:</label> <input
							type="text" class="form-control" name="nombre" id="txtNombre">
					</div>
					<div class="form-group">
						<label for="txtApellido" class="col-form-label">Apellido:</label>
						<input type="text" class="form-control" name="apellido" id="txtApellido">
					</div>
					<div class="form-group">
						<label for="txtDescripcionComunicador" class="col-form-label">Descripción
							personal:</label>
						<textarea class="form-control" name="descripcion" id="txtDescripcionComunicador"></textarea>
					</div>

				</div>

				<div class="modal-footer">
					<button class="btn btn-success" id="btnRegistrar"
						type="submit">Registrarse como comunicador</button>
				</div>
			</form>
         </div>
     </div>
</div>