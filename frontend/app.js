const input = document.getElementById('nombrePokemon');
const boton = document.getElementById('btnBuscar');
const resultado = document.getElementById('resultado');

async function buscarPokemon() {
  const nombre = input.value.trim().toLowerCase();

  if (nombre === '') {
    resultado.innerHTML = '<p class="error">Escribe el nombre de un pokémon.</p>';
    return;
  }

  resultado.textContent = 'Cargando...';

  try {
    const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`);

    if (!response.ok) {
      if (response.status === 404) {
        resultado.innerHTML = `<p class="error">El pokémon "${nombre}" no existe.</p>`;
      } else {
        resultado.innerHTML = `<p class="error">Error del servidor (${response.status}). Intenta de nuevo.</p>`;
      }
      return;
    }

    const data = await response.json();
    const tipos = data.types.map(t => t.type.name).join(', ');

    resultado.innerHTML = `
      <h2>${data.name}</h2>
      <img src="${data.sprites.front_default}" alt="${data.name}">
      <p><strong>Tipos:</strong> ${tipos}</p>
      <p><strong>Peso:</strong> ${data.weight}</p>
      <p><strong>Altura:</strong> ${data.height}</p>
    `;
  } catch (error) {
    resultado.innerHTML = '<p class="error">No se pudo conectar. Revisa tu conexión a internet.</p>';
  }
}

boton.addEventListener('click', buscarPokemon);