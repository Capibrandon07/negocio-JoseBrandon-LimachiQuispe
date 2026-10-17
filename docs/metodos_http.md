# Métodos HTTP

Pruebas realizadas con **Thunder Client** sobre la API pública
`https://jsonplaceholder.typicode.com/posts`.

## GET

**Para qué sirve:** obtener información de un recurso sin modificarlo.

**Cómo se usa:** se envía la petición a la URL del recurso, sin body.

- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** no lleva
- **Código de estado:** `200 OK`

![GET](get.png)

## POST

**Para qué sirve:** crear un recurso nuevo.

**Cómo se usa:** se envía a la URL de la colección con los datos del nuevo recurso en el body (JSON).

- **URL:** `https://jsonplaceholder.typicode.com/posts`
- **Body:**
```json
{
  "title": "Mi post",
  "body": "Contenido de prueba",
  "userId": 1
}
```
- **Código de estado:** `201 Created`

![POST](post.png)

## PUT

**Para qué sirve:** reemplazar un recurso completo.

**Cómo se usa:** se envía a la URL del recurso con todos sus campos en el body.

- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:**
```json
{
  "id": 1,
  "title": "Título nuevo",
  "body": "Cuerpo nuevo",
  "userId": 1
}
```
- **Código de estado:** `200 OK`

![PUT](put.png)

## PATCH

**Para qué sirve:** modificar solo algunos campos de un recurso.

**Cómo se usa:** se envía a la URL del recurso con únicamente los campos que cambian.

- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:**
```json
{
  "title": "Solo cambio el título"
}
```
- **Código de estado:** `200 OK`

![PATCH](patch.png)

## DELETE

**Para qué sirve:** eliminar un recurso.

**Cómo se usa:** se envía a la URL del recurso, sin body.

- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** no lleva
- **Código de estado:** `200 OK`

![DELETE](delete.png)

## Diferencia entre PUT y PATCH

PUT reemplaza el recurso completo teniendo que enviar todos los campos; PATCH cambia solo los campos que envías y deja el resto igual.
