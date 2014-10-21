class AgendamentosController < InheritedResources::Base
	def build_resource_params
		[params.fetch(:agendamento, {}).permit(:data, :hora, :pessoa_fisica_id, :estagio_id, :emprego_id)]
	end	
end
