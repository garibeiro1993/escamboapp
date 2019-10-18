require 'faker'

namespace :utils do

	desc "Cria Administradores Fake"
	task generate_admins: :environment do
		puts "Cadastrando ADMINISTRADORES"


		10.times do 
			Admin.create!(
				name: Faker::Name.name,
				email: Faker::Internet.email, 
				password: "123456",
				password_confirmation: "123456",
				role: [0,0,1,1,1].sample
				)

		end


		puts "Administradores cadastrados com Sucesso!!!"
	end

	desc "Cria Anúncios Fake"
	task generate_ads: :environment do
		puts "Cadastrando ANUNCIOS ..."

		25.times do
			Ad.create!(
				title: Faker::Lorem.sentence(word_count:[2,3,4,5].sample),
				description: Faker::Lorem.paragraph(sentence_count:Random.rand(3)),
				member: Member.all.sample,
				category: Category.all.sample,
				price: "#{Random.rand(500)},#{Random.rand(99)}",
				picture: File.new(Rails.root.join('public','templates','images-for-ads',"#{Random.rand(9)}.jpg"), 'r')
				)
	end
		puts "ANUNCIOS Cadastrados com sucesso"
	end

end
