puts 'Gerando courses...'

5.times do |i|
  Course.create(
    name: ["ruby basico", "java avançado"].sample ,
    value: ["300,00","270,00"].sample
    )
end

puts 'courses gerados com sucesso!'
