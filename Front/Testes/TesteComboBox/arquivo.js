//Array de Categoria em JSON puro
        var categorias = [
            { "Nome": "Cirurgião"},
            { "Nome": "Obstetra"}]
        //Array de Subcategoria em JSON puro
        $(document).ready(function () {
            //Percorre o array de categorias para popular o combo de categorias
            $.each(categorias, function (i, categoria) {
                //Faz o append (adiciona) cada um dos itens do array como options do select de id combo1
                $("#combo1").append($('<option>', {
                    //neste caso o value do option vai ser a pripriedade Id (é case sensitive, então cuide da nomenclatura)
                    text: categoria.Nome;
                }))
            })
            //Vai ser acionado cada vez que o combo1 tracar de item selecionado
            $("#combo1").change(function () {
                //Pegando o novo valor selecionado no combo
                var categoria = $(this).val()
            })
        })
        