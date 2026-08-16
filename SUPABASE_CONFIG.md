# ⚙️ Configuración Supabase

## Información del Proyecto

**Nombre:** Taller Mecánico  
**ID del Proyecto:** `xtbofdmzmmgofogiszhn`  
**Base de Datos:** PostgreSQL  
**Región:** (Verifica en tu dashboard de Supabase)

---

## 🔑 Credenciales de Conexión

Para conectarte a la base de datos desde Supabase, necesitarás:

1. **Project URL** (URL del Proyecto)
2. **API Key** (Anon Key o Service Role Key)

### Dónde encontrar tus credenciales:

1. Inicia sesión en [app.supabase.com](https://app.supabase.com)
2. Selecciona tu proyecto "Taller-Mecanico"
3. Ve a **Project Settings** → **API**
4. Aquí encontrarás:
   - `Project URL`
   - `anon` (public key)
   - `service_role` (secret key)

---

## 💻 Conexión desde CLI

### Usando supabase-cli:

```bash
# Instalar Supabase CLI
npm install -g @supabase/cli

# Conectar con tu proyecto
supabase link --project-ref xtbofdmzmmgofogiszhn
```

---

## 🗄️ Conexión a PostgreSQL Directamente

Supabase proporciona una conexión directa a PostgreSQL:

**Host:** `xtbofdmzmmgofogiszhn.supabase.co`  
**Puerto:** `5432`  
**Base de Datos:** `postgres`  
**Usuario:** (Disponible en tu dashboard)  
**Contraseña:** (Disponible en tu dashboard)

---

## 🔒 Seguridad

⚠️ **IMPORTANTE:**
- Nunca compartas tus claves privadas en GitHub
- Usa variables de entorno para credenciales sensibles
- Revisa `.gitignore` para asegurar que `.env` no se suba al repositorio

### Crear archivo .env (no subir a GitHub):

```env
SUPABASE_URL=https://xtbofdmzmmgofogiszhn.supabase.co
SUPABASE_KEY=tu_anon_key_aqui
SUPABASE_SERVICE_KEY=tu_service_role_key_aqui
```

---

## 📚 Recursos Útiles

- [Documentación de Supabase](https://supabase.com/docs)
- [PostgreSQL Docs](https://www.postgresql.org/docs/)
- [Tutoriales de Supabase](https://supabase.com/docs/guides)

---

## ❓ Soporte

Si tienes problemas para conectarte:
1. Verifica que el ID del proyecto sea correcto: `xtbofdmzmmgofogiszhn`
2. Comprueba que tu cuenta Supabase esté activa
3. Revisa los logs en tu dashboard de Supabase
4. Contacta con el coordinador: **Jorge Banegas**

---

**Última actualización:** Agosto 2026
