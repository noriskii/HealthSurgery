//Array de Categoria em JSON puro
var dados;
$.getJSON('../data/Especialidades.json', function (data) {
    dados = data;
    console.log(dados[1])
    console.log(dados[1].Id)
    console.log(dados[1].Categoria)
        //Array de Subcategoria em JSON puro
    $(document).ready(function () {
        //Percorre o array de categorias para popular o combo de categorias
        $.each(dados, function (i) {
            //Faz o append (adiciona) cada um dos itens do array como options do select de id combo1
            $("#cbbxEspec").append($('<option>', {
                //neste caso o value do option vai ser a pripriedade Id (é case sensitive, então cuide da nomenclatura)
                value: dados[i].Id,
                //no text estou usando a propriedade Categoria dos objetos dentro do array categoria (case sensitive também)
                text: dados[i].Categoria
            }))
        })
    })
});