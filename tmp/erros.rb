def levantar_erro
	begin
	p ">>>>>>>>>>> Antes do erro"
	File.open("abc.txt")
	p "Depois do erro"
rescue Errno::ENOENT => err_tratado
	p "O arquivo não existe ...."
rescue Exception => e
	p ">>>> pode dar erro que eu continuo ... #{e}"
ensure
	p ">>>>>>Isso é feito de qualquer forma"
end
end

levantar_erro