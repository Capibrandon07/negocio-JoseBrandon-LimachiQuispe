const input = document.getElementById('nombrePokemon');
const boton = document.getElementById('btnBuscar');
const resultado = document.getElementById('resultado');

async function buscarPokemon() {
  const nombre = input.value.trim().toLowerCase();

  const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`);
  const data = await response.json();

  const tipos = data.types.map(t => t.type.name).join(', ');

  resultado.innerHTML = `
    <h2>${data.name}</h2>
    <img src="${data.sprites.front_default}" alt="${data.name}">
    <p><strong>Tipos:</strong> ${tipos}</p>
    <p><strong>Peso:</strong> ${data.weight}</p>
    <p><strong>Altura:</strong> ${data.height}</p>
  `;
}

boton.addEventListener('click', buscarPokemon);