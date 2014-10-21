class PessoaFisicasController < InheritedResources::Base
	def build_resource_params
		[params.fetch(:pessoa_fisica, {}).permit(:nome, :dataNascimento, :endereco, :cpf, :curriculo,
		:cidade, :bairro, :telefone, :email)]
	end
end
