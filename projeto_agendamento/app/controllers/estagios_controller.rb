class EstagiosController < InheritedResources::Base
	def build_resource_params
		[params.fetch(:estagio, {}).permit(:cargo, :quantidadeDeVagas, :salario, :descricao, :especificacaoDeVaga, :pessoa_juridica_id)]
	end
end
