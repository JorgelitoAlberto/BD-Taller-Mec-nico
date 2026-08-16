# 🚀 Instrucciones para Publicar en GitHub

## Paso 1: Crear un Repositorio en GitHub

1. Ve a [GitHub.com](https://github.com)
2. Inicia sesión en tu cuenta
3. Haz clic en el icono **+** (arriba a la derecha) → **New repository**
4. Completa los siguientes datos:
   - **Repository name:** `BD-Taller-Mecanico`
   - **Description:** `Base de datos para un Taller Mecánico - Proyecto colaborativo`
   - **Visibility:** `Public` (para que todos puedan verlo)
   - **Initialize this repository with:** NO selecciones nada (ya tenemos archivos locales)
5. Haz clic en **Create repository**

---

## Paso 2: Conectar tu Repositorio Local con GitHub

Abre PowerShell en la carpeta del proyecto y ejecuta:

```powershell
cd "c:\Taller Mecanico\BD-Taller-Mecanico"

# Inicializar el repositorio git (si aún no está inicializado)
git init

# Configurar tu nombre y correo (si es la primera vez)
git config user.name "Tu Nombre"
git config user.email "tu.email@gmail.com"

# Agregar todos los archivos
git add .

# Crear el primer commit
git commit -m "Initial commit: Estructura del proyecto y README"

# Conectar con GitHub (reemplaza "tu-usuario" con tu usuario de GitHub)
git remote add origin https://github.com/tu-usuario/BD-Taller-Mecanico.git

# Subir al repositorio remoto
git branch -M main
git push -u origin main
```

---

## Paso 3: Agregar Colaboradores

1. Ve a tu repositorio en GitHub
2. Haz clic en **Settings** (Configuración)
3. En el menú izquierdo, selecciona **Collaborators** (Colaboradores)
4. Haz clic en **Add people**
5. Agrega a cada colaborador por su usuario de GitHub:
   - Andrea Corrales
   - Gabriela Loany
   - Genesis Corea
   - Luis Guillén
   - Rodrigo Velásquez
   - Jorge Banegas (Coordinador)

> **Nota:** Cada colaborador debe tener una cuenta GitHub y aceptar la invitación.

---

## Paso 4: Estructura del Trabajo Colaborativo

Cada miembro del equipo debe:

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/tu-usuario/BD-Taller-Mecanico.git
   ```

2. **Crear una rama para su trabajo:**
   ```bash
   git checkout -b feature/tu-nombre
   ```

3. **Agregar sus archivos SQL en su carpeta correspondiente**

4. **Subir sus cambios:**
   ```bash
   git add .
   git commit -m "Agregado [descripción de lo que hiciste]"
   git push origin feature/tu-nombre
   ```

5. **Crear un Pull Request en GitHub** para que Jorge (coordinador) revise y apruebe los cambios

---

## 📋 Datos del Proyecto

**ID de Supabase:** `xtbofdmzmmgofogiszhn`

Usa este ID cuando conectes tu aplicación a Supabase.

---

## ✅ Checklist Final

- [ ] Repositorio creado en GitHub
- [ ] Archivos locales subidos a GitHub
- [ ] Todos los colaboradores agregados
- [ ] Cada colaborador tiene acceso al repositorio
- [ ] README visible y accesible en GitHub

---

¡Listo! Tu repositorio está preparado para el trabajo colaborativo. 🎉
