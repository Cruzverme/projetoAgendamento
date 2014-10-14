class EmpregosController < InheritedResources::Base
	def build_resource_params
		[params.fetch(:emprego, {}).permit(:cargo, :quantidadeDeVagas, :salario, :descricao, :requisitos, :pessoa_juridica_id)]
	end
end
