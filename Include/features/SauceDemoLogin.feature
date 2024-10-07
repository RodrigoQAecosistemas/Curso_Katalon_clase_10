Feature: SauceDemo Login Feature

Background:
	Given el usuario navega por la pagina del login 

@id_1 @loginValidos
 Scenario Outline: Validar iniciar sesion exitosamente con credenciales validas
    When el usuario introduce credenciales validas <usuario> <password>
    Then se puede visualizar la home

    Examples: 
      | usuario  								| password		 | 
      | standard_user						| secret_sauce | 
      | problem_user 						| secret_sauce | 
      | performance_glitch_user | secret_sauce | 
      | error_user 							| secret_sauce | 
      | visual_user 						| secret_sauce | 