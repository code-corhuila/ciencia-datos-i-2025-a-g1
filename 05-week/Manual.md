# Manual para configurar git

1. Instalar

!["Activar bash"](img/Instalar.png)

2. Validar que windows esté sin credenciales de git
   
   * Ir a credenciales de windows
   
   !["Paso 1"](img/Paso1-Credenciales.png)

   * Ir a pestaña `credenciales de windows`
   
   !["Paso 2"](img/Paso2-Credenciales.png)

   * Buscar si hay usuario autenticado `remove`, si no corresponde a su usuario.
   
   !["Paso 3"](img/Paso3-Credenciales.png)


3. Autenticar cuenta y realizar cambios

   * Configurar valiables generales
   
      - `git config --global user.name "John Doe"`
      - `git config --global user.email johndoe@example.com`

4. Clonar repositorio y realizar cambios

   * Clonar    
      - `git clone https://github.com/code-corhuila/ciencia-datos-i-2025-a-g1.git`
  
  * Obtener últimos cambios    
      - `git pull`
  
  * Publicar cambios    
      - `git pull`
      - `git add .`
      - `git commit -m "Publicar comandos básicos de git."`
      - `git push`